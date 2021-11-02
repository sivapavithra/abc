package abc.SearchServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a;
		
		String name=request.getParameter("name");
		SearchClass obj=new SearchClass();
		if(name.equals("Age")) {
		String d=request.getParameter("data");
		int data=Integer.parseInt(d);
		String operation=request.getParameter("operation");
		a=obj.search(name,data,operation);
		}
		else {
			String data=request.getParameter("data");
			
			String operation=request.getParameter("operation");
			a=obj.search(name,data,operation);
		}
		
		request.setAttribute("query", a);
	         RequestDispatcher rd = 
	             request.getRequestDispatcher("SearchRecords.jsp");
	          rd.forward(request, response);
		
		
	}
	}


