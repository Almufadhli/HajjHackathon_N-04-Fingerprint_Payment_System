using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Driver;
using MongoDB.Bson;

namespace training.Utility
{
    public class Hajj
    {
        public ObjectId _id { get; set; }

        public string fullName { get; set; }

        public string pilgirmId { get; set; }

        public string userId { get; set; }

        public string nationality { get; set; }

        public string residency { get; set; }

        public string fingerPrintHash { get; set; }

        public int HCredit { get; set; }

        public string phone { get; set; }


        public Hajj(string fullName, string pilgirmId, string userId, string nationality, string residency, string fingerPrintHash, int HCredit, string phone)
        {
            _id = new ObjectId();
            this.fullName = fullName;
            this.pilgirmId = pilgirmId;
            this.userId = userId;
            this.nationality = nationality;
            this.residency = residency;
            this.fingerPrintHash = fingerPrintHash;
            this.HCredit = HCredit;
            this.phone = phone;
        }


        public BsonDocument getBsonDoc ()
        {
            var doc = new BsonDocument
            {
                { "fullName", fullName },
                { "pilgirmId", pilgirmId },
                { "userId", userId },
                { "nationality", nationality },
                { "residency", residency },
                { "fingerPrintHash", fingerPrintHash },
                { "HCredit", HCredit },
                { "phone", phone }
            };


            return doc;
        }



    }
}