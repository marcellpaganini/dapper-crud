using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class FullPersonModel : UserModel
    {
        public int Id { get; set; }
        public PhoneModel CellPhone { get; set; }
    }
}
