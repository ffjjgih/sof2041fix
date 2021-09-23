package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.mail.handlers.message_rfc822;

import Dao.Daouserimplement;
import Dao.Daousers;
import Model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Daousers dao;
    private User u;

    public Login() {
        super();
       this.u=new User();
       this.dao=new Daouserimplement();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/Login.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tk=request.getParameter("username");
		String mk=request.getParameter("pass");
			u=this.dao.login(tk, mk);
				if(u.getRoles().trim().equalsIgnoreCase("Customer")) {
					response.sendRedirect("http://localhost:8080/dam/Home?index="+u.getUserid());
				}else {
					response.sendRedirect("http://localhost:8080/dam/Homeadmin?index="+u.getUserid());
				}
		}
	
	private void login(HttpServletRequest request, HttpServletResponse response) {
		String tk=request.getParameter("username");
		String mk=request.getParameter("pass");
		try {
			u=this.dao.login(tk, mk);
			if(u!=null) {
				System.out.println(u.getRoles());
				if(u.getRoles().equalsIgnoreCase("customer")) {
					response.sendRedirect("http://localhost:8080/sof2041final/Food?id="+u.getUserid());
				}else if(u.getRoles().equalsIgnoreCase("Admin")){
					response.sendRedirect("http://localhost:8080/sof2041final/Manageuser?id="+u.getUserid());
				}
				if(u.getRoles()==null) {
					response.sendRedirect("http://localhost:8080/sof2041final/Manageuser");
				}
				request.setAttribute("l", u);
			}else {
				response.sendRedirect("http://localhost:8080/sof2041final/Manageuser?");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
