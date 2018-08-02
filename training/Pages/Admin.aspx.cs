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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            string pId = txt_search_pilgrim.Text;

            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("hajjhackathon");
            var pilgrimColl = database.GetCollection<BsonDocument>("Pilgrim");
            var filter = Builders<BsonDocument>.Filter.Eq("pilgrimId", pId);
            var document = pilgrimColl.Find(filter).First();

            if (document != null)
            {
                fullName.Text = document["fullName"].AsString;
                pilgrimId.Text = document["pilgrimId"].AsString;
                userId.Text = document["userId"].AsString;
                nationality.Text = document["nationality"].AsString;
                residency.Text = document["residency"].AsString;
                credit.Text = document["HCredit"].AsInt32.ToString();
                phone.Text = document["phone"].AsString;

            }

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            string fullName = txt_new_fullName.Text;
            string pilgrimId = txt_new_pilgrimId.Text;
            string userId = txt_new_userId.Text;
            string nationality = txt_new_nationality.Text;
            string residency = txt_new_residency.Text;
            string credit = txt_new_credit.Text;
            string phone = txt_new_phone.Text;

            
        }
    }
}