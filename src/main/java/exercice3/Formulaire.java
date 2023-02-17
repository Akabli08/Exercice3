package exercice3;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/formulaire")
public class Formulaire extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<Etudiant> etudiants = new ArrayList<Etudiant>();
		int Netud = Integer.parseInt(req.getParameter("nombre"));
		int i;
		for (i = 1; i < Netud+1; i++) {
			Etudiant e = new Etudiant();
			String name = req.getParameter("name"+i);
			e.setNom(name);
			String prenom = req.getParameter("prenom"+i);
			e.setPrenom(prenom);
			int note = Integer.parseInt(req.getParameter("note"+i));
			e.setNote(note);
			etudiants.add(e);
		}
		Collections.sort(etudiants);
		req.setAttribute("etudiants", etudiants);
		this.getServletContext().getRequestDispatcher("/WEB-INF/liste.jsp").forward(req, resp);
	}
}
