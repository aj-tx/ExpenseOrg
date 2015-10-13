using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseOrg.Service.Models
{
    [Serializable]
    public class User
    {
        public User()
        {

        }
        public string email { get; set; }
        public string firstname { get; set; }
        public string password { get; set; }
        public string lastname { get; set; }
        public string familyemails { get; set; }
    }
}