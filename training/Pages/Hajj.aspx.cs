using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using training.Utility;

namespace training.Pages
{
    public partial class Hajj : System.Web.UI.Page
    {
        crud operations = new crud();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_money_Click(object sender, EventArgs e)
        {
            string pilgrimId = PID_txtbox.Text;

            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("hajjhackathon");

            var pilgrimColl = database.GetCollection<BsonDocument>("Pilgrim");
            var transColl = database.GetCollection<BsonDocument>("Transactions");


            var filter = Builders<BsonDocument>.Filter.Eq("pilgrimId", pilgrimId);
            var document = pilgrimColl.Find(filter).FirstOrDefault();

            

            if (document != null)
            {

                double existingCredit = document["HCredit"].ToDouble();
                double newCredit = existingCredit + Convert.ToDouble(Money_txtbox.Text);

                var update = Builders<BsonDocument>.Update.Set("HCredit", newCredit);


                var result = pilgrimColl.FindOneAndUpdate(filter, update);
                //Response.Redirect("Hajj.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void deposit(string pilgrimId, double amount)
        {

            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("hajjhackathon");

            var pilgrimColl = database.GetCollection<BsonDocument>("Pilgrim");


            BsonDocument doc = operations.findPilgrim(pilgrimId);
            if (doc != null)
            {
                double newCredit = doc["HCredit"].AsDouble + amount;
                var filter = Builders<BsonDocument>.Filter.Eq("pilgrimId", pilgrimId);
                var update = Builders<BsonDocument>.Update.Set("HCredit", newCredit);

                var result = pilgrimColl.FindOneAndUpdate(filter, update);



                var document = pilgrimColl.Find(filter).First();

                depositResult.Text = "Successfully deposited the money";

            }
            else
            {
                depositResult.Text = "invalid pilgrim ID";
            }


        }
    }
}