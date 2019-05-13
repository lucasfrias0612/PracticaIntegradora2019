package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.UserDTO;
import services.UsersService;

/**
 * Servlet implementation class AlumnoAlta
 */
@WebServlet("/AlumnoAlta")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("STATUS", request.getParameter("status"));
		getServletContext().getRequestDispatcher("/JSP/alumno_alta.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDTO user = new UserDTO(request.getParameter("legajo"), request.getParameter("dni"),
				request.getParameter("nombre"), request.getParameter("apellido"), request.getParameter("email"),
				request.getParameter("genero"));
		try {
			UsersService.addUser(user);
			response.sendRedirect("./Alumnos?status=1");
		} catch (Exception e) {
			response.sendRedirect("./Alumnos?status=0");
			e.printStackTrace();
		}

	}

}
