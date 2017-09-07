package controller;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jasig.cas.client.util.AbstractCasFilter;
import org.jasig.cas.client.validation.Assertion;

public class HelloWorldExample extends HttpServlet {
	private static final long serialVersionUID = -4496415413413645075L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		if (name != null)
			System.out.println(new String(name.getBytes("iso-8859-1"), "utf-8"));
		PrintWriter out = response.getWriter();
		out.print("congratulation!you got it from cas-client!");
	}

}
