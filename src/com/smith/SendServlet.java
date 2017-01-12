package com.smith;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by smith on 12.01.17.
 */

public class SendServlet extends HttpServlet {

    public static List<User> users = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String ageS = req.getParameter("age");
        int age = Integer.parseInt(ageS);
        String quest1 = req.getParameter("quest1");
        String quest2 = req.getParameter("quest2");
        String quest3S = req.getParameter("quest3");
        int quest3 = Integer.parseInt(quest3S);

        users.add(new User(name, surname, age, quest1, quest2, quest3));

        resp.sendRedirect("statistics.jsp");
    }
}
