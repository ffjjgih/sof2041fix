package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Daouserimplement;
import Dao.Daousers;
import Model.Gmail;
import Model.User;
import Service.Emailutils;

/**
 * Servlet implementation class Forgotpassword
 */
@WebServlet("/Forgotpassword")
public class Forgotpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private User u;
    private Daousers dao;
    public Forgotpassword() {
        this.u=new User();
        this.dao=new Daouserimplement();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/Forgotpassword.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String mail=request.getParameter("email");
			String user_name=request.getParameter("username");
			u=dao.finduser(mail, user_name);
			if(u!=null) {
				Gmail gmail=new Gmail();
				gmail.setFrom("lambcph16980@fpt.edu.vn");
				gmail.setTo(mail);
				gmail.setFrompassword("Your Password Function");
				StringBuilder builder=new StringBuilder();
				builder.append("Dear").append(u.getFullname()).append("</br>");
				builder.append("Your password is</b>").append(u.getPass()).append("</b>");
				builder.append("regards");
				builder.append("administrator");
				gmail.setContent(builder.toString());
				Emailutils emailUtils=new Emailutils();
				emailUtils.send(gmail);
				request.setAttribute("Message", "chúng tôi đã gửi mail xác nhận mật khẩu về mail của bạn. Vui lòng kiểm tra mail để lấy mật khẩu của bạn.");
			}else {
				request.setAttribute("error", "username hoặc email không đúng");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/Forgotpassword.jsp").forward(request, response);
	}

}
