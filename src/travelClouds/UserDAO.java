package travelClouds;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pojoClasses.User;

public class UserDAO {
    
    public boolean addUser(User user)  {
    	System.out.println("in add user method");
        Connection conn = DBConnection.getConnection();
        PreparedStatement createUserPS = null;
        ResultSet rs = null;
        int userCount = 0;
        try {
			createUserPS = conn
			        .prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
			createUserPS.setString(1, user.getFirstName());
	        createUserPS.setString(2, user.getLastName());
	        createUserPS.setString(3, user.getEmailid());
	        createUserPS.setString(4, user.getPassword());
	        createUserPS.setString(5, user.getConfirmPassword());
	        createUserPS.setLong(6, user.getPhonenumber());
	        createUserPS.setString(7, user.getCountry());
	        createUserPS.setString(8, "Enabled");

	        createUserPS.setString(9, user.getUserName());

	         userCount = createUserPS.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        DBConnection.closeConnection(conn);
        if(userCount>0){
        return true;
        }else{return false;}
    }

	public void addUserInLogin(User user)  {
		System.out.println("in add user in login method");
		 Connection conn = DBConnection.getConnection();
	        PreparedStatement insertUserPS = null;
	        ResultSet rs = null;
	        try {
				insertUserPS = conn
				        .prepareStatement("insert into user_login values(?,?,?,?)");
				  insertUserPS.setString(1, user.getEmailid());
			      insertUserPS.setString(2, user.getPassword());
			      insertUserPS.setString(3, "User");
			      insertUserPS.setString(4, user.getUserName());

			      insertUserPS.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        DBConnection.closeConnection(conn);

	}

	
	public ArrayList<String> validateUser(String email, String password) {
		System.out.println("in validate user method");
	        Connection conn = DBConnection.getConnection();
	        PreparedStatement validateUserPS = null;
	        ResultSet rs = null;
	        String retrievedPwd = null;
	        String retrievedrole = null;
	        
	        ArrayList<String> userDetails = new ArrayList<>();
	        try {
	        	
	        	
				validateUserPS = conn
				        .prepareStatement("select password,role from user_login where userName = ? or emailId = ?");
				 validateUserPS.setString(1, email);
				 validateUserPS.setString(2, email);


			        rs = validateUserPS.executeQuery();
			        if(rs == null){
			        	userDetails = null;
		                return userDetails;
			        }else{
			        while (rs.next()) {
			        	retrievedPwd = rs.getString("password");
			        	retrievedrole = rs.getString("role");
			        }
			        }
			        if (password.equals(retrievedPwd) && email != null) {
		               
			        	userDetails.add(email);
			        	userDetails.add(retrievedrole);
		                return userDetails;

		            }
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	        return null;
	    }

	public String getProfile(String email, String password) {
		System.out.println("in get profile method");
		Connection conn = DBConnection.getConnection();
        PreparedStatement retrieveUserPS = null;
        ResultSet rs = null;
        ArrayList<String> userProfile = new ArrayList<>();
        String retrievedFirstName = null;
        String retrievedLastName = null;
        System.out.println("*****************"+email);
        String name=null;
		  try {
	        	
	        	
			  retrieveUserPS = conn
				        .prepareStatement("select firstName,lastName from user where userName = ? or emailID = ?");
			  retrieveUserPS.setString(1, email);
			  retrieveUserPS.setString(2, email);

			        rs = retrieveUserPS.executeQuery();
			        if(rs == null){
		                return null;
			        }else{
			        while (rs.next()) {
			        	retrievedFirstName = rs.getString("firstName");
			        	retrievedLastName = rs.getString("lastName");
			        	name =  retrievedFirstName+" "+retrievedLastName;
			        }
			        }          
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		return name;
	}
		
	
	public ArrayList<User> retriveDetails() {
		System.out.println("in retrieve details method");
		Connection conn = DBConnection.getConnection();
        PreparedStatement retrieveUserPS = null;
        ResultSet rs = null;
        ArrayList<User> userProfile = new ArrayList<>();

		  try {
	        	
	        	
			  retrieveUserPS = conn
				        .prepareStatement("select * from user where status=?");
			  retrieveUserPS.setString(1, "Enabled");
			  rs = retrieveUserPS.executeQuery();
			        while (rs.next()) {
			            User user = new User();

			        	user.setFirstName(rs.getString("firstName"));
			        	user.setLastName(rs.getString("lastName"));
			        	user.setStatus(rs.getString("status"));

				        userProfile.add(user);

			        }
			        
			        
			       
		     

		            
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		return userProfile;
	}
	}
    
   

