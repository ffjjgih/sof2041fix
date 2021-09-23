package Controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import Dao.DaoCart;
import Dao.Daocartimplement;
import Dao.Daofood;
import Dao.Daofoodimplement;
import Dao.Daouserimplement;
import Dao.Daousers;

/**
 * Servlet implementation class Food
 */
@WebServlet({
	"/Food",
	"/Food/Pay",
	"/Food/Cart"
})
public class Food extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Daofood dao;
    private Daousers daouser;
    private DaoCart daocart;
    private Model.Food food;
    private List<Model.Food> lst;
    public Food() {
        this.dao=new Daofoodimplement();
        this.food=new Model.Food();
        this.lst=new ArrayList<Model.Food>();
        this.daouser=new Daouserimplement();
        this.daocart=new Daocartimplement();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		showall(request, response);
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int index=Integer.parseInt(request.getParameter("index"));
		String iduser=request.getParameter("index");
		request.setAttribute("idcustomer", iduser);
		String url=request.getRequestURL().toString();
		if(url.contains("Cart")) {
			addcart(request, response,index);
		}
		request.getRequestDispatcher("/Customer/Food.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=request.getRequestURL().toString();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int indexx=Integer.parseInt(request.getParameter("index"));
		request.setAttribute("idcustomer", indexx);
		if(url.contains("Pay")) {
			payfood(request, response);
			response.sendRedirect("http://localhost:8080/dam/Customer/Pay.jsp");
		}else if(url.contains("Cart")) {
			addcart(request, response,indexx);
			request.getRequestDispatcher("/Customer/Food.jsp").forward(request, response);
		}
		
	}
	
	private void showall(HttpServletRequest request, HttpServletResponse response) {
		try {
			lst=this.dao.getall();
			request.setAttribute("lstfood", lst);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void payfood(HttpServletRequest request, HttpServletResponse response) {
		int index=Integer.parseInt(request.getParameter("index"));
		Model.Hoadon hoadon=new Model.Hoadon();
		int id=Integer.parseInt(request.getParameter("id"));
		hoadon.setGia(serialVersionUID);
		hoadon.setSoluong(1);
		LocalDateTime datetime=LocalDateTime.now();
		Timestamp datetimesql=Timestamp.valueOf(datetime);
		hoadon.setThoigian(datetimesql);
		Model.Food f=this.dao.findfood(id);
		hoadon.setFood(f);
	}
	
	private void addcart(HttpServletRequest request, HttpServletResponse response,int index) {
		Model.Cart cart=new Model.Cart();
		int id=Integer.parseInt(request.getParameter("id"));
		cart.setGia(Float.parseFloat(request.getParameter("price")));
		cart.setSoluong(1);
		LocalDateTime datetime=LocalDateTime.now();
		Timestamp datetimesql=Timestamp.valueOf(datetime);
		cart.setThoigiandathang(datetimesql);
		this.food=this.dao.findfood(id);
		cart.setFood(food);
		cart.setUser(this.daouser.findid(index));
		try {
			BeanUtils.populate(cart, request.getParameterMap());
			daocart.create(cart);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
