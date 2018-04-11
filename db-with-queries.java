import java.sql.*;
import java.util.Scanner;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/*
General Comments:
1. FLNO NOT EXIST and PlaneID SHOULD EXIST
2. CHECK FromA and ToA. It should be from the view.
*/


final class Project4 
{
    final static String user = "ras3701";         
    final static String password = "ssryfBi9jqn";          //mysql password
    
    final static String db = "ras3701";
    final static String jdbc = "jdbc:mysql://localhost:3306/" + db + "?user=" + user + "&password=" + password;		//string required for establishing connection
    
    
    @SuppressWarnings("empty-statement")
    public static void main(String[] args) throws Exception 
    {
        boolean check = true;
        boolean check_name = false;
        int checker_id = 1;
        int checker_no = 0;
        int checker_fromA = 1;
        int checker_toA = 1;
        int checker_time = 1;
        Scanner sc = new Scanner(System.in);
        char menu;
        String planeID;
        String flno;
        String fromA="";
        String toA="";
        String depTime="";
        String arrTime="";
        int meal = 0;
        int sm = 0;
        int seq = 1;                            //seq will always be 1
        //System.out.println("hi");
        Class.forName("com.mysql.jdbc.Driver").newInstance();			//Step 1: loading the driver
        Connection con = DriverManager.getConnection(jdbc);			//Step 2: Establishing connection
        Statement stmt = con.createStatement();					//Step 3: Creating a statement object
        
        
        while(check)
        {
            System.out.println("1. Create VIEW - Airport_Plane_Arrivals");
            System.out.println("2. Create VIEW - Plane_Bookings");
            System.out.println("3. Display VIEW - Airport_Plane_Arrivals");
            System.out.println("4. Display VIEW - Plane_Bookings");
            System.out.println("5. Allocate a plan for servicing a new flight");
            System.out.println("6. Print Table - Flight");
            System.out.println("7. Print Table - FlightLeg");
            System.out.println("q. Quit");
            
            menu = sc.next().charAt(0);
            
            switch(menu)
            {
                case '1': 								//Step 5
                        try
                        {
                            Statement st = con.createStatement();
                            String code = "Create VIEW Airport_Plane_Arrivals AS SELECT Code AS Airport_Code, City, State, Plane.Maker AS Plane_Maker, Plane.Model AS Plane_Model, COUNT(*) AS Number_Of_Daily_Arrivals\n" +
"                                          FROM Airport JOIN Plane ON Airport.Code = Plane.LastMaintA\n" +
"                                          GROUP BY Maker, Model";
                            st.executeUpdate(code);
                            System.out.println("VIEW 'Airport_Plane_Arrivals' successfully created!");
                        }
                        catch(SQLException s)
                        {
                            System.out.println("VIEW 'Airport_Plane_Arrivals' already exists!");
                        }
                        break;
                        
                case '2': 
                        try
                        {
                            Statement st = con.createStatement();
                            String code = "Create VIEW Plane_Bookings AS SELECT Plane.ID AS PlaneID, Plane.Maker, Plane.Model, FlightLeg.FLNO, FlightLeg.Seq, FlightLeg.FromA, FlightLeg.ToA, FlightLeg.DeptTime, FlightLeg.ArrTime\n" +
"                                          FROM Plane JOIN FlightLeg ON Plane.ID = FlightLeg.Plane";
                            st.executeUpdate(code);
            
                            System.out.println("VIEW 'Plane_Bookings' successfully created!");
                        } 
                        catch(SQLException s)
                        {
                            System.out.println("VIEW 'Plane_Bookings' already exists!");
                        }
                        break;
                        
                case '3': try
                          {
                            ResultSet rs1 = stmt.executeQuery("SELECT * FROM Airport_Plane_Arrivals");
                            while(rs1.next())
                            {
                                System.out.println(rs1.getString("Airport_Code")+" "+rs1.getString("City")+" "+rs1.getString("State")+" "+rs1.getString("Plane_Maker")+" "+rs1.getString("Plane_Model")+" "+rs1.getString("Number_Of_Daily_Arrivals"));
                            }
                            rs1.close(); 
                          }
                          catch(SQLException s)
                          {
                              System.out.println("VIEW 'Airport_Plane_Arrivals' has not been created.");
                          }
                          break;
                          
                case '4': try
                          {
                            ResultSet rs2 = stmt.executeQuery("SELECT * FROM Plane_Bookings");
                            while(rs2.next())
                            {
                                System.out.println(rs2.getString("PlaneID")+" "+rs2.getString("Maker")+" "+rs2.getString("Model")+" "+rs2.getString("FLNO")+" "+rs2.getString("Seq")+" "+rs2.getString("FromA")+" "+rs2.getString("ToA")+" "+rs2.getString("DeptTime")+" "+rs2.getString("ArrTime"));
                            }
                            rs2.close();
                          }
                          catch(SQLException s)
                          {
                              System.out.println("VIEW 'Plane_Bookings' has not been created.");
                          }
                          break;
                        
                case '5': do
                          {
                            
                            //checks if plane ID is not unique
                            do
                            {
                                ResultSet rs = stmt.executeQuery("SELECT * FROM FlightLeg");
                                System.out.println("Plane ID?");
                        
                                planeID = sc.next();
                                
                                while(rs.next())
                                {
                                    if(planeID.equals(rs.getString("Plane")))
                                    {
                                        checker_id = 0;
                                    }
                                }
                                if(checker_id == 1)
                                {
                                    System.out.println("There is no Plane with this ID. The Plane ID that you'd like to use must exist.");
                                }
                                rs.close();
                            }while(checker_id == 1);
                                
                            //setting check_name to true again.
                            //check_name = true;
                            
                            do
                            {
                                checker_no = 0;
                                ResultSet rs = stmt.executeQuery("SELECT * FROM FlightLeg");
                                System.out.println("Flight Number?");
                            
                                flno = sc.next();
                            
                                //checks if flight number is unique
                                while(rs.next())
                                {
                                    if(flno.equals(rs.getString("FLNO")))
                                    {
                                        checker_no = 1;
                                        //check_name = true;
                                        //break;
                                    }
                                }
                                if(checker_no == 1)
                                {
                                    System.out.println("There is a Flight with the same number.");
                                }
                                rs.close();
                            }while(checker_no == 1);
                            
                            //if plane ID is not unique and flight number is unique, then the program prompts for additional input
                            if(checker_id == 0 && checker_no == 0)
                            {
                                check_name = false;
                                    
                                do
                                {
                                    ResultSet rs5 = stmt.executeQuery("SELECT * FROM Airport");
                                    System.out.println("From Airport?");
                                    fromA = sc.next();
                                    
                                    //check if fromA entered by the user exists in the database
                                    while(rs5.next())
                                    {
                                        if(fromA.equals(rs5.getString("Code")))
                                        {
                                            checker_fromA = 0;
                                        }
                                    }
                                    if(checker_fromA == 1)
                                    {
                                        System.out.println("The Airport Code does not exist in the Database. Try again.");
                                        checker_fromA = 1;
                                    }
                                    rs5.close();
                                }while(checker_fromA == 1);
                                        
                                //checks if toA entered by the user exists in the database
                                do
                                {
                                    ResultSet rs5 = stmt.executeQuery("SELECT * FROM Airport");
                                    System.out.println("To Airport?");
                                    toA = sc.next();
                                     
                                    while(rs5.next())
                                    {
                                        if(toA.equals(rs5.getString("Code")))
                                        {
                                            checker_toA = 0;
                                        }
                                    }
                                    if(checker_toA == 1)
                                    {
                                            System.out.println("The Airport Code does not exist in the Database. Try again.");
                                            checker_toA = 1;
                                    }
                                    rs5.close();
                                }while(checker_toA == 1);
                                    
                                //checks if the difference between the departure time and the arrival time is atleast 1 hour and less than or equal to 2 hours
                                do
                                {   
                                    System.out.println("Departure Time? (in 'hh:mm:ss')");
                                    depTime = sc.next();
                                    DateFormat sdf = new SimpleDateFormat("hh:mm:ss");
                                    java.util.Date dep = sdf.parse(depTime);
                                
                                
                                    System.out.println("Arrival Time? (in 'hh:mm:ss')");
                                    arrTime = sc.next();
                                    java.util.Date arr = sdf.parse(arrTime);
                                
                                    //check if the difference betwen depTime and arrTime is at least 1 hour and less than or equal to 2 hours
                                    //if the condition is satisfied, add the data to the FlightLeg
                                    if(arr.after(dep))
                                    {
                                        long diffMs = arr.getTime() - dep.getTime();
                                        long h = diffMs/1000;
                                        long hour = h/3600;
                                        //System.out.println(hour);
                                        if((hour >= 1) && (hour <= 2))
                                        {
                                            checker_time = 0;
                                            
                                            String sql = "INSERT INTO Flight(FLNO, Meal, Smoking) VALUES ('" + flno + "', '" + meal + "', '" + sm + "')";
                                            stmt.executeUpdate(sql);
                                        
                                            String sql_fl = "INSERT INTO FlightLeg(FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES ('" + flno + "', '" + seq + "', '" + fromA + "', '" + toA + "', '" + depTime + "', '" + arrTime + "', '" + planeID + "')";
                                            stmt.executeUpdate(sql_fl);
                                            
                                            System.out.println("Data has been inserted into the Flight and FlightLeg table.");
                                        }
                                        else
                                        {
                                            checker_time = 1;
                                            System.out.println("Invalid Input. The difference between the Departure Time and the Arrival Time should be between 1 hour and 2 hours.");
                                        }
                                    }
                                    else
                                    {
                                        System.out.println("Invalid Input. Arrival Time cannot be before Departure Time");
                                        checker_time = 1;
                                    }
                                }while(checker_time == 1);
                                    
                                //rs5.close();
                                //rs.close();
                            }
                            
                            checker_id = 1;
                            checker_no = 0;
                            checker_fromA = 1;
                            checker_toA = 1;
                            checker_time = 1;
                        }while(check_name);
                        break;
                          
                case '6': ResultSet rs3 = stmt.executeQuery("SELECT * FROM Flight");
                          while(rs3.next())
                          {
                              System.out.println(rs3.getString("FLNO")+" "+rs3.getString("Meal")+" "+rs3.getString("Smoking"));
                          }
                          rs3.close();
                          break;   
                          
                case '7': ResultSet rs4 = stmt.executeQuery("SELECT * FROM FlightLeg");
                          while(rs4.next())
                          {
                              System.out.println(rs4.getString("FLNO")+" "+rs4.getString("Seq")+" "+rs4.getString("FromA")+" "+rs4.getString("ToA")+" "+rs4.getString("DeptTime")+" "+rs4.getString("ArrTime")+" "+rs4.getString("Plane"));
                          }
                          rs4.close();
                          break;
                          
                case 'q': check = false;
                          break;
                        
                        
                default: System.out.println("Invalid Input. Try again");
                         break;
            }
          }
        
        stmt.close();
        con.close();								//Step 6: Closing the connection
    }    
}
