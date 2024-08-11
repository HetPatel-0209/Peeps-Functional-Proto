package in.com.peeps.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    PreparedStatement preparedStatement = null;
    Connection con = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
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
		String queryString = "insert into user (name, email, password) values(?, ?, ?)";
		String fn = request.getParameter("FirstName");
		String ln = request.getParameter("LastName");
		String name = fn+" "+ln;
		String Email = request.getParameter("email");
		String Pass = request.getParameter("pass");
		String Confirm = request.getParameter("Con-Pass");
		getConnection();
		if (Pass.equals(Confirm)) {
			try {
				preparedStatement = con.prepareStatement(queryString);
				preparedStatement.setString(1, name);
				preparedStatement.setString(2, Email);
				preparedStatement.setString(3, Pass);
				preparedStatement.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			 request.setAttribute("error", "Passwords do not match.");
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
	}
	private void getConnection() {
		final String DB_URL = "jdbc:mysql://localhost:3306/peeps_test_db";
		final String DB_USERNAME = "root";
		final String DB_PASSWORD = "";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
