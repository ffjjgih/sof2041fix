package Controller;

import java.io.IOException;
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
import Dao.Daouserimplement;
import Dao.Daousers;
import Model.User;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Model.Cart c;
	private DaoCart daocart;
	private Daousers daouser;
	private List<Model.Cart> lstcart;
	private User u;
    public Cart() {
        super();
        this.c=new Model.Cart();
        this.daocart=new Daocartimplement();
        this.daouser =new Daouserimplement();
        this.lstcart=new ArrayList<Model.Cart>();
        this.u=new User();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int indexx=Integer.parseInt(request.getParameter("index"));
		//getallprice(request, response, indexx);
		getcart(request, response, indexx);
		getinforuser(request, response, indexx);
		request.getRequestDispatcher("/Customer/Cart.jsp").forward(request, response);
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
		request.getRequestDispatcher("/Customer/Cart.jsp").forward(request, response);
	}

	private void getcart(HttpServletRequest request, HttpServletResponse response,int indexx) {
		this.lstcart=this.daocart.showcartbyid(indexx);
		request.setAttribute("dsgiohang", lstcart);
	}
	private void getallprice(HttpServletRequest request, HttpServletResponse response,int indexx) {
		double tongtien=this.daocart.getallpricebyid(indexx);
		request.setAttribute("tongcong", tongtien);
	}
	
	private void getinforuser(HttpServletRequest request, HttpServletResponse response,int indexx) {
		this.u=this.daouser.findid(indexx);
		request.setAttribute("nguoidung", u);
	}
}
