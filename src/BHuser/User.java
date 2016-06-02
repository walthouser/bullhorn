package BHuser;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class User 
{
	String userEmail;
	String userName;
	String motto;
	String joinDate;
	String userPassword;
		
	// create a user object and put it into a session then go to home.jsp else go to login.jsp

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return userEmail;
	}
	public void setEmail(String email) {
		this.userEmail = email;
	}
	public String getMotto() {
		return userName;
	}
	public void setMotto(String mottoe) {
		this.motto = motto;
	}
}
