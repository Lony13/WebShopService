package com.koczy.testdb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet(name = "testdbservler")
public class testdbservler extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = "shopservice";
        String pass = "shopservice";

        String jdbcUrl = "jdbc:mysql://localhost:3306/shop_service?useSSL=false";
        String driver = "com.mysql.jdbc.Driver";

        try{
            PrintWriter out = response.getWriter();

            out.println("Connecting to database: " + jdbcUrl);

            Class.forName(driver);

            Connection conn = DriverManager.getConnection(jdbcUrl, user, pass);

            out.println("SUCCESS !");

            conn.close();
        } catch (Exception e){
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}
