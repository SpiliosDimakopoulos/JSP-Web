package exercise3_2024_2025_8220035;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 * UserDAO provides all the necessary methods related to users.
 * 
 * @author Spilios Dimakopoulos
 *
 */
public class UserDAO {
		
	/**
	 * This method returns a List with all Users
	 * 
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception {
		DB db = new DB();
		Connection con = null;
		String query = "SELECT firstname, lastname, email, username FROM users_ex3_8220035_2024_2025";
	
		try {
			con = db.getConnection();
			PreparedStatement pStatement = con.prepareStatement(query);
			ResultSet result = pStatement.executeQuery();
	
			List<User> userList = new ArrayList<User>();
	
			while (result.next()) {
				userList.add(new User(
					result.getString("users_ex3_8220035_2024_2025.firstname"),
					result.getString("users_ex3_8220035_2024_2025.lastname"),
					result.getString("users_ex3_8220035_2024_2025.email"),
					result.getString("users_ex3_8220035_2024_2025.username"),
					""
				));
			}
	
			result.close();
			pStatement.close();
			db.close();

			return userList;
	
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}
	}
	

	/**
	 * Search user by username
	 * 
	 * @param username, String
	 * @return User, the User object or null
	 * @throws Exception
	 */
	public User findUser(String username) throws Exception {
		
		DB db = new DB();
		Connection con = null;
		String query = "SELECT * FROM users_ex3_8220035_2024_2025 " + 
			       "WHERE username=?"; 

		try {
			con = db.getConnection();
			PreparedStatement pStatement = con.prepareStatement(query);
			
			pStatement.setString(1, username);

			ResultSet result = pStatement.executeQuery();

			if (!result.next()) {

				result.close();
				pStatement.close();
				db.close();
				return null;
			} 
			return new User(result.getString("users_ex3_8220035_2024_2025.firstname"),
								 result.getString("users_ex3_8220035_2024_2025.lastname"),
								 result.getString("users_ex3_8220035_2024_2025.email"),
								 result.getString("users_ex3_8220035_2024_2025.username"),
					             result.getString("users_ex3_8220035_2024_2025.password"));

			
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}
		
	} //End of findUser

	/**
	 * This method is used to authenticate a user.
	 * 
	 * @param username, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public User authenticate(String username, String password) throws Exception {
		
		DB db = new DB();
		Connection con = null;
		String query = "SELECT username, password FROM users_ex3_8220035_2024_2025 " + 
			       "WHERE username=? AND password=?";

		try {

			con = db.getConnection();
			PreparedStatement pStatement = con.prepareStatement(query);

			pStatement.setString(1, username);
			pStatement.setString(2, password);

			ResultSet result = pStatement.executeQuery();

			if (!result.next()) {
				result.close();
				pStatement.close();
				db.close();
				throw new Exception("Wrong username or password");
			}

			User userA = new User("", 
								  "", 
								  "", 
								  result.getString("username"), 
								  result.getString("password"));

			result.close();
			pStatement.close();
			db.close();
						
			return userA;
		
		} catch(Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch(Exception e){

			}
		}	
		
	} //End of authenticate
	
	/**
	 * Register/create new User.
	 * 
	 * @param user, User
	 * @throws Exception, if encounter any error.''
	 */
	public void register(User user) throws Exception {

		DB db = new DB();
		Connection con = null;
		String checkQuery = "SELECT * FROM users_ex3_8220035_2024_2025 WHERE username=? OR email=?";
		String insertQuery = "INSERT INTO users_ex3_8220035_2024_2025 " +
							 "(username, firstname, lastname, email, password) VALUES (?, ?, ?, ?, ?)";
	
		try {
			con = db.getConnection();
			PreparedStatement checkStmt = con.prepareStatement(checkQuery);
	
			checkStmt.setString(1, user.getUsername());
			checkStmt.setString(2, user.getEmail());
			ResultSet checkResult = checkStmt.executeQuery();
	
			if (checkResult.next()) {
				throw new Exception("Sorry, username or email already registered");
			}
	
			checkResult.close();
			checkStmt.close();
	
			PreparedStatement insertStmt = con.prepareStatement(insertQuery);
	
			insertStmt.setString(1, user.getUsername());
			insertStmt.setString(2, user.getFirstname());
			insertStmt.setString(3, user.getLastname());
			insertStmt.setString(4, user.getEmail());
			insertStmt.setString(5, user.getPassword());
			
	
			insertStmt.executeUpdate();
			insertStmt.close();
	
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	} // end of register

} //End of class
