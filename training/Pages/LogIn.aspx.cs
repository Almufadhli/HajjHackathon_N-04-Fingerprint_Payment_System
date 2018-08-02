using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using training.Utility;

namespace training.Pages
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminRedirect(object sender, EventArgs e)
        {

            var client = new MongoClient("mongodb://localhost:27017");

            var database = client.GetDatabase("hajjhackathon");

            var adminColl = database.GetCollection<BsonDocument>("Admin");
            string adminId = user_txt.Text;
            string adminPass = password_txt.Text;


            // test insert
            //admin adm = new admin(adminId, adminPass, "Example@gmail.com");
            //adminColl.InsertOne(adm.getBsonDoc());


            //BsonDocument adm = new BsonDocument();
            //adm = 

            // set filter to query the collection by the userid
            var Idfilter = Builders<BsonDocument>.Filter.Eq("userId", adminId);
            var Iddocument = adminColl.Find(Idfilter).First();

            // chekc if the id exists
            if (Iddocument.ElementCount != 0)
            {
                // now check if the password is correct
                var Passfilter = Builders<BsonDocument>.Filter.Eq("pass", adminPass);
                var Passdocument = adminColl.Find(Passfilter).First();

                // if the password is corrent, then login
                if (Iddocument.GetValue(2) == adminPass)
                {
                    Session["adminId"] = adminId;
                    Response.Redirect("Seller.aspx");
                }
            }


            
        }

        protected void pilgrimRedirect(object sender, EventArgs e)
        {
            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("hajjhackathon");

            var pilgrimColl = database.GetCollection<BsonDocument>("Pilgrim");
            string pilgrimId = PID_txt.Text;

            //pilgrimColl.



            //Hajj test = new Hajj();
            //BsonDocument test = new BsonDocument();
            

            var filter = Builders<BsonDocument>.Filter.Eq("pilgrimId", pilgrimId);
            

            //var document = pilgrimColl.Find(new BsonDocument()).FirstOrDefault();
            //Console.WriteLine(document.ToString());

            var document = pilgrimColl.Find(filter).First();
            //Console.WriteLine(document);

            // this prints all docus in the collection
            //var documents = pilgrimColl.Find(new BsonDocument()).ToList();

            //var document = pilgrimColl.Find(filter).First<BsonDocument>();


            if (document.ElementCount > 0)
            {
                Session["pilgrimID"] = pilgrimId;
                Response.Redirect("Hajj.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            //Console.WriteLine(document);


            //pilgrimColl.find

            //var collection = db.GetCollection<Hajj>("Pilgrim");
            //await pilgrimColl.Find(Pilgrim => Hajj.hajjId = pilgrimId)
            //    .ForEachAsync(Hajj => Console.WriteLine(Hajj.FirstName + " " + Hajj.LastName));

            //pilgrimColl.Find


        }
    }
}