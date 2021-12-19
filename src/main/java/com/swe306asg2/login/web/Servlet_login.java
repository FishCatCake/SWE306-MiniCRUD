package com.swe306asg2.login.web;


import com.swe306asg2.login.bean.loginBean;
import com.swe306asg2.login.database.loginDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class Servlet_login extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private loginDao loginDao;

    public void init() {
        loginDao = new loginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        loginBean loginBean = new loginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                response.sendRedirect("?");//patient list
            } else {
               /* HttpSession session = request.getSession();
                session.setAttribute("user", username);*/
                response.sendRedirect("loginFailed.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}

