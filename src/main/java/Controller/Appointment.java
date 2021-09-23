package Controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Timer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import Dao.Daobook;
import Dao.Daobookimplement;
import Dao.Daostore;
import Dao.Daostoreimplement;
import Dao.Daouserimplement;
import Dao.Daousers;
import Model.Booking;
import Model.User;

/**
 * Servlet implementation class Appointment
 */
@WebServlet({
		"/Appointment",
		"/Appointment/book"
})
public class Appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Daobook daobook;
    private Daousers daouser;
    private Booking b;
    private Daostore daostore;
    public Appointment() {
        super();
        this.daobook=new Daobookimplement();
        this.daouser=new Daouserimplement();
        this.b=new Booking();
        this.daostore=new Daostoreimplement();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int index=Integer.parseInt(request.getParameter("index"));
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		request.setAttribute("idcustomer", index);
		request.getRequestDispatcher("/Customer/Booking.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=request.getRequestURL().toString();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int index=Integer.parseInt(request.getParameter("index"));
		request.setAttribute("idcustomer", index);
		if(url.contains("book")) {
			make_an_appointment(request, response, index);
		}
		request.getRequestDispatcher("/Customer/Booking.jsp").forward(request, response);
	}

	private void make_an_appointment(HttpServletRequest request, HttpServletResponse response,int index) {
		User u=this.daouser.findid(index);
		b.setUser(u);
		b.setStore(this.daostore.getaddress(Integer.parseInt(request.getParameter("address"))));
		SimpleDateFormat formattime=new SimpleDateFormat("HH/mm");
		try {
			Time t=new Time(formattime.parse(request.getParameter("timebook")).getTime());
			b.setThoigiandatban(t);
			BeanUtils.populate(b, request.getParameterMap());
			this.daobook.create(b);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
