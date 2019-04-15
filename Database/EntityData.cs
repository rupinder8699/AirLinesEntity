using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Database
{
    class EntityData
    {
        public static int Ins(tbPlane data) {
            return SaveData(data);
        }

        public static int SaveData(tbPlane data) {
            using (DbAirlineEntities obj = new DbAirlineEntities()) {
                obj.tbPlanes.Add(data);
                obj.SaveChanges();
                return data.ID;
            }


        }
    }
}
