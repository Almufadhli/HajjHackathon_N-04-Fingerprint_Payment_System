﻿using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text.RegularExpressions;
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
            //pointOfSale adm = new pointOfSale("1112345", "pass", "test@test.com", "1234567890");
            //pointOfSale adm1 = new pointOfSale("1123456", "pass", "test2@test.com", "2345678901");
            //pointOfSale adm2 = new pointOfSale("1134567", "pass", "test3@test.com", "3456789012");
            //pointOfSale adm3 = new pointOfSale("1145678", "pass", "test4@test.com", "4567890123");
            //pointOfSale adm4 = new pointOfSale("1156789", "pass", "test5@test.com", "5678901234");
            //pointOfSale adm5 = new pointOfSale("1167890", "pass", "test6@test.com", "6789012345");
            //pointOfSale adm6 = new pointOfSale("178901", "pass", "test7@test.com", "7890123456");
            //pointOfSale adm7 = new pointOfSale("1189012", "pass", "test8@test.com", "8901234567");

            //BsonDocument doc = new BsonDocument(adm.getBsonDoc());
            //BsonDocument doc1 = new BsonDocument(adm1.getBsonDoc());
            //BsonDocument doc2 = new BsonDocument(adm2.getBsonDoc());
            //BsonDocument doc3 = new BsonDocument(adm3.getBsonDoc());
            //BsonDocument doc4 = new BsonDocument(adm4.getBsonDoc());
            //BsonDocument doc5 = new BsonDocument(adm5.getBsonDoc());
            //BsonDocument doc6 = new BsonDocument(adm6.getBsonDoc());
            //BsonDocument doc7 = new BsonDocument(adm7.getBsonDoc());

            

            //var client = new MongoClient("mongodb://localhost:27017");
            //var database = client.GetDatabase("hajjhackathon");

            //var pointOfSaleColl = database.GetCollection<BsonDocument>("PointOfSale");
            //pointOfSaleColl.InsertOne(doc);
            //pointOfSaleColl.InsertOne(doc1);
            //pointOfSaleColl.InsertOne(doc2);
            //pointOfSaleColl.InsertOne(doc3);
            //pointOfSaleColl.InsertOne(doc4);
            //pointOfSaleColl.InsertOne(doc5);
            //pointOfSaleColl.InsertOne(doc6);
            //pointOfSaleColl.InsertOne(doc7);


        }

        protected void adminRedirect(object sender, EventArgs e)
        {

            var client = new MongoClient("mongodb://localhost:27017");

            var database = client.GetDatabase("hajjhackathon");

            
            string id = user_txt.Text;
            string pass = password_txt.Text;


            int digits = Convert.ToInt32(Regex.Match(id, @"^\d{2}").ToString());
            //string firstTwoDigits = Regex.Matches(id, "/[0-1]{2}").ToString();
           // int digits = Convert.ToInt32(string.Join("", firstTwoDigits));

            if (digits == 00)
            {
                var Idfilter = Builders<BsonDocument>.Filter.Eq("userId", id);

                // admin
                var adminColl = database.GetCollection<BsonDocument>("Admin");
                var Iddocument = adminColl.Find(Idfilter).First();

                // chekc if the id exists
                if (Iddocument.ElementCount != 0)
                {
                    // now check if the password is correct
                    var Passfilter = Builders<BsonDocument>.Filter.Eq("pass", pass);
                    var Passdocument = adminColl.Find(Passfilter).First();

                    // if the password is corrent, then login
                    if (Iddocument["pass"] == pass)
                    {
                        Session["adminId"] = id;
                        Response.Redirect("Admin.aspx");
                    }
                }

            }
            else if (digits == 11)
            {
                var Idfilter = Builders<BsonDocument>.Filter.Eq("sellerId", id);


                // seller
                var sellerColl = database.GetCollection<BsonDocument>("PointOfSale");
                var Iddocument = sellerColl.Find(Idfilter).First();

                // chekc if the id exists
                if (Iddocument.ElementCount != 0)
                {
                    // now check if the password is correct
                    var Passfilter = Builders<BsonDocument>.Filter.Eq("pass", pass);
                    var Passdocument = sellerColl.Find(Passfilter).First();

                    // if the password is corrent, then login
                    if (Iddocument["pass"] == pass)
                    {
                        Session["sellerId"] = id;
                        Response.Redirect("Seller.aspx");
                    }
                }
            }
            else
            {
                // not a valid id
            }


            // test insert
            //admin adm = new admin(adminId, adminPass, "Example@gmail.com");
            //adminColl.InsertOne(adm.getBsonDoc());


            //BsonDocument adm = new BsonDocument();
            //adm = 

            // set filter to query the collection by the userid
            


            
        }

        protected void pilgrimRedirect(object sender, EventArgs e)
        {
            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("hajjhackathon");

            var pilgrimColl = database.GetCollection<BsonDocument>("Pilgrim");
            //string pilgrimId = PID_txt.Text;

            //pilgrimColl.



            //Hajj test = new Hajj();
            //BsonDocument test = new BsonDocument();
            

            //var filter = Builders<BsonDocument>.Filter.Eq("pilgrimId", pilgrimId);
            

            //var document = pilgrimColl.Find(new BsonDocument()).FirstOrDefault();
            //Console.WriteLine(document.ToString());

            //var document = pilgrimColl.Find(filter).First();
            //Console.WriteLine(document);

            // this prints all docus in the collection
            //var documents = pilgrimColl.Find(new BsonDocument()).ToList();

            //var document = pilgrimColl.Find(filter).First<BsonDocument>();


            //if (document.ElementCount > 0)
            //{
            //    //Session["pilgrimID"] = pilgrimId;
            //    Response.Redirect("Hajj.aspx");
            //}
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}
            //Console.WriteLine(document);


            //pilgrimColl.find

            //var collection = db.GetCollection<Hajj>("Pilgrim");
            //await pilgrimColl.Find(Pilgrim => Hajj.hajjId = pilgrimId)
            //    .ForEachAsync(Hajj => Console.WriteLine(Hajj.FirstName + " " + Hajj.LastName));

            //pilgrimColl.Find


        }
    }
}