using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson;

namespace training.Utility
{
    public class transactions
    {
        public ObjectId _id { get; set; }
        public string sellerId { get; set; }
        public string costumerId { get; set; }
        public DateTime transactionDate { get; set; }
        public int amount { get; set; }
        public string status { get; set; }


        public transactions()
        {

        }

        public transactions(string sellerId, string costumerId, DateTime date, int amount, string status)
        {
            _id = new ObjectId();
            this.sellerId = sellerId;
            this.costumerId = costumerId;
            this.transactionDate = date;
            this.amount = amount;
            this.status = status;
        }

        public BsonDocument getBsonDoc()
        {
            var doc = new BsonDocument
            {
                { "sellerId", sellerId },
                { "costumerId", costumerId },
                { "transactionDate", transactionDate },
                { "amount", amount },
                { "status", status },
            };

            return doc;
        }

    }
}