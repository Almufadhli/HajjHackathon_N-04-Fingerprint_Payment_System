using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace training.Utility
{
    public class crud
    {


        public BsonDocument findPilgrim(string pilgrimId)
        {
            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("hajjhackathon");
            var pilgrimColl = database.GetCollection<BsonDocument>("Pilgrim");
            var filter = Builders<BsonDocument>.Filter.Eq("pilgrimId", pilgrimId);
            var document = pilgrimColl.Find(filter).First();

            return document;
        }

    }
}