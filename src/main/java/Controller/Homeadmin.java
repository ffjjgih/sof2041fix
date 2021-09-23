package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import Dao.Daohome;
import Dao.Daohomeimplements;
import Model.Home;

/**
 * Servlet implementation class Homeadmin
 */
@WebServlet({
	"/Homeadmin",
	"/Homeadmin/insertbanner",
	"/Homeadmin/insertevents",
	"/Homeadmin/updateevents",
	"/Homeadmin/updatebanner"
})
public class Homeadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Daohome dao;
    private ArrayList<Home> lsthome;
    private ArrayList<Home> lstbanner;
    private ArrayList<Home> lstposter;
    public Homeadmin() {
        super();
        this.dao=new Daohomeimplements();
        this.lsthome=new ArrayList<Home>();
        this.lstbanner=new ArrayList<Home>();
        this.lstposter=new ArrayList<Home>();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=request.getRequestURL().toString();
		showbanner(request, response);
		showposter(request, response);
		request.getRequestDispatcher("/Admin/Homeadmin.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=request.getRequestURL().toString();
		if(url.contains("insertbanner")) {
			createbanner(request, response);
			
		}else if(url.contains("insertevents")) {
			createposter(request, response);
		}
		showbanner(request, response);
		showposter(request, response);
		request.getRequestDispatcher("/Admin/Homeadmin.jsp").forward(request, response);
		
	}

	private void createbanner(HttpServletRequest request, HttpServletResponse response){
		try {
			Home home=new Home();
			BeanUtils.populate(home,request.getParameterMap());
			this.dao.create(home);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void createposter(HttpServletRequest request, HttpServletResponse response){
		try {
			Home home=new Home();
			BeanUtils.populate(home,request.getParameterMap());
			this.dao.create(home);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void showbanner(HttpServletRequest request, HttpServletResponse response) {
		try {
			this.lsthome=this.dao.getall();
			for(Home x:lsthome) {
				if(x.getTitle()==null) {
					this.lstbanner.add(x);
				}
			}
			request.setAttribute("dsbanner", lstbanner);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void showposter(HttpServletRequest request, HttpServletResponse response) {
		try {
			this.lsthome=this.dao.getall();
			for(Home x:lsthome) {
				if(x.getTitle()!=null) {
					this.lstposter.add(x);
				}
			}
			request.setAttribute("dsposter", lstposter);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
