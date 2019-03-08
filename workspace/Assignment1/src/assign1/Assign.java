package assign1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		
		String title="Server Side";
		int len1 = check.length;
		int len2 = rd.length;
		getset gs=new getset(len1, len2);
		gs.setName(name);
		gs.setAddr(addr);
		gs.setPno(pno);
		int i=0;
		for (String str:check)
		{
			gs.setAssign(i,str);
			i++;
		}
		int j=0;
		for (String str2:rd)
		{
			gs.setGen(j, str2);
			j++;
		}
		gs.setCity(city);
		
		out.print("<html><head><title>"+title+"</title></head><body>");
		out.print("<table cellspac><tr><th>Name</th><td>"+gs.getName()+"</td></tr>");
		out.print("<tr><th>Address</th><td>"+gs.getAddr()+"</td></tr>");
		out.print("<tr><th>Phone</th><td>"+gs.getPno()+"</td></tr>");
		String[] assignment=gs.getAssign();
		out.print("<tr><th>Assignment</th>");
		for (String str: assignment)
		{
			out.print("<td>"+str+"</td></tr>");
		}
		String[] gender=gs.getGen();
		out.print("<tr><th>Gender</th>");
		for (String str2: gender)
		{
			out.print("<td>"+str2+"</td></tr>");
		}
		out.print("<tr><th>City</th><td>"+gs.getCity()+"</td></tr></table>");
		
		

		/*request.setAttribute("person",gs);
		request.getRequestDispatcher("display.jsp").forward(request, response);*/
		/*RequestDispatcher rd1 =  
             request.getRequestDispatcher("JSP/display.jsp"); 
		 rd1.forward(request, response);*/
		
		
		out.print("</body></html>");
		

	}

}
