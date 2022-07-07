package com.to.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Define datasource/connection pool for reference

	@Resource(name = "jdbc_database")
	private DataSource dataSource;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Set the printwriter
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");

		// establish connection to the DB
		Connection Conn = null;
		Statement Stmt = null;
		ResultSet rs = null;

		try {

			Conn = dataSource.getConnection();
			// create a sql statement
			String sql = "select * from students";
			Stmt = Conn.createStatement();

			// execute the sql statement
			rs = Stmt.executeQuery(sql);

			// process the resultset
			while (rs.next()) {
				String fname = rs.getString("fname");
				out.println(fname);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}