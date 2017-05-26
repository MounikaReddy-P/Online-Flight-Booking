package travelClouds;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import pojoClasses.Flight;
import pojoClasses.User;

public class FlightDAO {

	public ArrayList<Flight> fetchFlightInfo(String fromLocation, String toLocation,String travelClass)  {
	        Connection conn = DBConnection.getConnection();
	        PreparedStatement createUserPS = null;
	        ResultSet rs = null;
	  	    ArrayList<Flight> flights = new ArrayList<Flight>();

	        try {
	        	  PreparedStatement statement = conn.prepareStatement("select * FROM flights WHERE "
	                      + "fromLocation like ? "
	                      + "and toLocation like ? "
	                      + "and class = ? ");   
	  	        statement.setString(1, fromLocation+"%");
	  	        statement.setString(2, toLocation+"%");    
	  	        statement.setString(3, travelClass);
	  	        rs=statement.executeQuery();
	  	        System.out.println(rs.getFetchSize());
	  	        
	  	        

	  	  	
	  
	  	        while(rs.next()){
	  	  	        Flight flightInfo = new Flight();

	  	        	flightInfo.setFrom_location(fromLocation);
	  	        	flightInfo.setTo_location(toLocation);
	  	        	flightInfo.setTravel_class(travelClass);
	  	        	flightInfo.setPassengers(rs.getInt("passengers"));
	  	        	flightInfo.setDepart_date(rs.getString("departDate"));
	  	        	flightInfo.setArrival_date(rs.getString("arrivalDate"));
	  	        	flightInfo.setDepart_time(rs.getString("departTime"));
	  	        	flightInfo.setArrival_time(rs.getString("arrivalTime"));
	  	        	flightInfo.setLeg(rs.getString("leg"));
	  	        	flightInfo.setReturn_depart_time(rs.getString("returnDepartTime"));
	  	        	flightInfo.setReturn_arrival_time(rs.getString("returnArrivalTime"));
	  	        	flightInfo.setDuration(rs.getString("duration"));
	  	        	flightInfo.setStops(rs.getString("stops"));
	  	        	flightInfo.setPrice(rs.getInt("price"));
	  	        	
	  	        	flights.add(flightInfo);
	  	        	
	  	        	
	  	        }
	  	        
	  	        
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        DBConnection.closeConnection(conn);
			return flights;
	        
	    }
}
