package assign1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoModel;

/**
 * Servlet implementation class Assign
 */
@WebServlet("/Assign")
public class Assign extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("sname");
		String addr=request.getParameter("address");
		String pno=request.getParameter("mno");
		String check[]=request.getParameterValues("ch1");
		String rd[]=request.getParameterValues("gender");
		String city=request.getParameter("cities");
		
		getset gs=new getset();

		gs.setName(name);
		gs.setAddr(addr);
		gs.setPno(pno);
		String asgn="";
		for (String str:check)
		{
			asgn=asgn+str+",";
		}
		gs.setAssign(asgn);
		String gen="";
		for (String str2:rd)
		{
			gen=gen+str2;
		}
		gs.setGen(gen);
		gs.setCity(city);
			

		/*String sql="insert into student(name,addr,phone,assignment,gender,,city) values(?,?,?,?,?,?)";*/
		int n=DaoModel.register(name,addr,pno,asgn,gen,city,gs); //we get integer value from executeupdate method so we use int variable
			
		if (n!=0)
		{
			System.out.println("Value inserted");
		}
		else{
			System.out.println("Error...... Value not inserted");
		}
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("JSP/display.jsp");
		dispatcher.forward(request, response);

	}



}
