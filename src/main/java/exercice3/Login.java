package exercice3;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/")
public class Login extends HttpServlet{
	@Override
	protected void doGet(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp)
			throws javax.servlet.ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp)
			throws javax.servlet.ServletException, IOException {
		if(!req.getParameter("name").isEmpty() && !req.getParameter("password").isEmpty() && !req.getParameter("nombre").isEmpty()) {
			String name = req.getParameter("name");
			String password = req.getParameter("password");
			int nombre = Integer.parseInt(req.getParameter("nombre"));
			if(password.equals("password")) {
				req.setAttribute("nom", name);
				req.setAttribute("nombre", nombre);
				this.getServletContext().getRequestDispatcher("/WEB-INF/formulaire.jsp").forward(req, resp);
			}else {
				req.setAttribute("error", "Mod de passe est incorrecte");
				this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
			}
		}
	}
	
}
