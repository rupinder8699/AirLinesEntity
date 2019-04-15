using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace Database
{
    public class frmLogin
    {
        EntityData obj = new EntityData();

        public String UserName { get; set; }

        public String Password { get; set; }

        //global declaration of the variable 
        SqlConnection connection;
        String connection_String = "Data Source=DESKTOP-QULTHGL\\SQLEXPRESS;Initial Catalog=DbAirline;Integrated Security=True";
        SqlCommand command;
        SqlDataReader Datareader;

        

        //using the concept of oops define a single method that is used to insert delete and update the record in the table 
        public void InsDelUpdt(String qry)
        {

            connection = new SqlConnection(connection_String);
            connection.Open();
            command = new SqlCommand(qry, connection);
            command.ExecuteNonQuery();
            connection.Close();
        }

        // user define method that is used to get the record from the table
        public DataTable Srch(String qry)
        {
            DataTable tbl = new DataTable();


            connection = new SqlConnection(connection_String);

            connection.Open();
            command = new SqlCommand(qry, connection);

            Datareader = command.ExecuteReader();

            tbl.Load(Datareader);

            connection.Close();

            return tbl;
        }




        //method to check the login page to validate and working next if login is wrong then semd an error message
        public int verify(String userName, String Password) {

            DataTable tblRecord = new DataTable();
            String qry = "select * from tbAdmin where SName='"+userName+"' and SPassword='"+Password+"'";
            tblRecord = Srch(qry);
            if (tblRecord.Rows.Count > 0)
            {
                return 1;
            }
            else {
                return 0;
            }
            

        }

        // this bloack is used to add the record of the Plane
        public int PlanenNo { get; set; }
        public String PlaneName { get; set; }
        public String Arrival { get; set; }
        public String destination { get; set; }
        public int Price { get; set; }

        // add the Plane to the Record
        public Boolean addPlane(int PlaneNo,String PlaneName,String Arrival, String destination, int Price) {
            String Qry = "insert into tbPlane(PlaneNo,PlaneName,Arrival,destination,Price) values(" + PlaneNo+",'"+PlaneName+"','"+ Arrival + "','"+destination+"',"+Price+")";
            InsDelUpdt(Qry);
            return true;
        }

        // view the plane according to the searching from destination  
        public DataTable ViewSearchPlane(String departure,String destination) {

            DataTable tbRecord = new DataTable();
                
            tbRecord=Srch("select * from tbPlane where Arrival='"+departure+"' and destination='"+destination+"'");

            return tbRecord;

        }

        // Book the Plane According to the choice and get the details after clicking on the booing button
        public DataTable BookPlane(int PlaneId) {

            DataTable tbRecord = new DataTable();

            tbRecord = Srch("select * from tbPlane where id="+PlaneId+"");

            return tbRecord;



        }

        // this method id used to store the booking record in the table 
        public int Booking(int PlaneNo, String PlaneName, String Arrival, String destination, int Price,String CustName,int Tickets,String Sdate,int Totprice)
        {
            String Qry = "insert into tbBooking(PlaneNo,PlaneName,Arrival,destination,Price,CustomerName,Tickets,Sdate,TotalPrice) values(" + PlaneNo + ",'" + PlaneName + "','" + Arrival + "','" + destination + "'," + Price + ",'"+CustName+"',"+Tickets+",'"+Sdate+"',"+Totprice+")";
            InsDelUpdt(Qry);

            Qry = "";
            Qry = "select * from tbBooking ORDER BY id DESC";

            DataTable tb = new DataTable();
            tb=Srch(Qry);
            return Convert.ToInt32(tb.Rows[0]["id"].ToString());
        }


        // view the plane according to the searching from destination  
        public DataTable cancelTicket(int TicketNo)
        {

            DataTable tbRecord = new DataTable();

            tbRecord = Srch("select * from tbBooking where Id="+TicketNo+"");

            return tbRecord;

        }
        
        // this method is used to an ccanel the  ticket from the protal
        public void cancelBooking(int id) {
            String qry = "delete from tbBooking where id="+id+"";
            InsDelUpdt(qry);
        }

        // this method is used to an ccanel the  ticket from the protal
        public void sendMsg(String Name,String Email,String MSg)
        {
            String qry = "Insert into tbContact (Sname,Semail,Smsg) values('" + Name + "','" + Email + "','" + MSg + "')";
            InsDelUpdt(qry);

        }




    }
}
