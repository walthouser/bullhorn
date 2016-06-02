import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import BHuser.User;

/**
 * Servlet implementation class helloServlet
 */
@WebServlet("/Input")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String nextURL = "login.jsp";
    	HttpSession session = request.getSession();
    	
	      // Actual logic goes here.
		
//	    PrintWriter out = response.getWriter();
//	    String message = username + " " + password;
	    if (checkValid(userName,password))
	    {	   


	    	User user = new User();
	    	user.setUserName(userName);
//	    	user.setMotto(motto);
	    	user.setEmail(password);
	    	
//add the user to the session
	    	session.setAttribute("user", user);
		    nextURL = "/home.jsp";	    	
	
//		out.println("<h1>" + "User Name= "  + username +"</h1>"); 
//	    out.println("<h1>" + "Password= "  + password +"</h1>");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	    }	else {
	    	session.invalidate();
		    nextURL = "/login.jsp";
		    
		    //	    	out.println("Invalid user and password combination.");
	    }
	    //redirect to next page as indicated by the value of the nextURL variable

	    getServletContext().getRequestDispatcher(nextURL).forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
		private static boolean checkValid(String username, String password) {
			boolean isValid = false;
			if (username.equals("walt") & password.equals("password")){
				isValid=true;  
			}else{
				isValid=false;
			}
			
			return isValid;
		
	}

}
