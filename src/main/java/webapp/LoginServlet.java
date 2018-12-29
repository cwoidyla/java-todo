package webapp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private LoginService authentication = new LoginService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		//request.setAttribute("name", request.getParameter("name"));
		//request.setAttribute("password", request.getParameter("password"));
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		//System.out.println(request.getParameter("name"));
		//System.out.println(request.getParameter("password"));
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		boolean authenticated = authentication.validateUser(name, password);
		if (authenticated) {
			response.sendRedirect("/todo.do");
			//request.setAttribute("name", name);
			//request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
		}
		else {
			String errorMsg = "Incorrect username or password!";
			request.setAttribute("error",errorMsg);
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}
		
	}
}