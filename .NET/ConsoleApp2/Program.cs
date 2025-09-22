using System;
using System.Data.SqlClient;
namespace ConsoleApp2
{
        internal class Program
        {
            static void Main(string[] args)
            {
                Console.WriteLine("Hello, World!");
                Console.WriteLine("Getting Connection ...");

                var datasource = @"LAPTOP-VPPT2LSP"; // your server
                var database = "b2_dotnet"; // your database name
                                             //var username = "DESKTOP-LCNNVH9\\kk"; // username of server to connect
                                             //var password = ""; // password

                // Create your connection string
                string connString = @"Data Source=" + datasource +
                    ";Initial Catalog=" + database + "; Trusted_Connection=True;";


                Console.WriteLine(connString);

                SqlConnection conn = new SqlConnection(connString);

                try
                {
                    Console.WriteLine("Opening Connection ...");
                    // Open the connection
                    conn.Open();
                    Console.WriteLine("Connection successful!");
                    InsertStaff(conn);
                    displayStaff(conn);

                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
                finally
                {
                    // Close the connection
                    conn.Close();
                }


            }
            static void InsertStaff(SqlConnection conn)
            {
                //Console.Write("Enter the Staff Name...");
                int std_id = 1;
                string std_name = "Namii";
                string std_contactno = "1234555654";
                string querry = "insert into Student (std_id,std_name,std_contactno) values (@std_id,@std_name,@std_contactno)";
                SqlCommand cm = new SqlCommand(querry, conn);
                cm.Parameters.AddWithValue("@std_id", std_id);
                cm.Parameters.AddWithValue("@std_name", std_name);
                cm.Parameters.AddWithValue("@std_contactno", std_contactno);
            int rows = cm.ExecuteNonQuery();
                if (rows > 0)
                {
                    Console.WriteLine("Inseted recordsuccessfully");
                }


            }
            static void displayStaff(SqlConnection conn)
            {
                string query = "select * from Student";
                SqlCommand cm = new SqlCommand(query, conn);
                SqlDataReader reader = cm.ExecuteReader();
                Console.WriteLine("Staff :");
                while (reader.Read())
                {
                    {
                    Console.WriteLine($"Id : {reader["std_id"]}, contact no : {reader["std_contactno"]}   Name :{reader["std_name"]} , ");
                }
                }
            }
        }
    
}
