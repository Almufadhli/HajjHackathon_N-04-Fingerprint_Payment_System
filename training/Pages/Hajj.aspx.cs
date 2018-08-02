using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace training.Pages
{
    public partial class Hajj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_money_Click(object sender, EventArgs e)
        {
            string pilgrimId = Session["pilgrimId"].ToString();

            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("hajjhackathon");

            var pilgrimColl = database.GetCollection<BsonDocument>("Pilgrim");


            var filter = Builders<BsonDocument>.Filter.Eq("pilgrimId", pilgrimId);
            var document = pilgrimColl.Find(filter).First();

            

            if (document.ElementCount > 0)
            {

                int existingCredit = document["HCredit"].ToInt32();
                int newCredit = existingCredit + Convert.ToInt32(Money_txtbox.Text);

                var update = Builders<BsonDocument>.Update.Set("HCredit", newCredit);



                var result = pilgrimColl.FindOneAndUpdate(filter, update);
                Response.Redirect("Hajj.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }
    }
}