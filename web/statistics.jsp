<%@ page import="static com.smith.SendServlet.users" %>
<%@ page import="com.smith.User" %><%--
  Created by IntelliJ IDEA.
  User: smith
  Date: 12.01.17
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Statistics</title>
</head>
<body>
<h1>Статистика:</h1><br>
    <%if (!users.isEmpty()) {

            int summAge = 0;
            for (User user : users)
                summAge += user.getAge();
            int age = (int) (summAge/users.size());
    %>
    <p>Средний возраст пользователей: </p> <%=age%><br><br>

    <%
        int numJava = 0;
        int numCpp = 0;
        int numNotPascal = 0;

        for (User user : users) {
            switch (user.getQuest1()) {
                case "Java":
                    numJava++;
                    break;
                case "C++":
                    numCpp++;
                    break;
                case "not-a-Pascal":
                    numNotPascal++;
                    break;
            }
        }
    %>
    Предпочитают Java: <%=numJava%> человек<br>
    Предпочитают C++: <%=numCpp%> человек<br>
    Кому надоел Pascal: <%=numNotPascal%><br><br>

    <%
        int night = 0;
        int lateNight = 0;
        int ofCourseNight = 0;

        for (User user : users) {
            switch (user.getQuest2()) {
                case "night":
                    night++;
                    break;
                case "late-night":
                    lateNight++;
                    break;
                case "of-course-at-night":
                    ofCourseNight++;
                    break;
            }
        }
    %>
    Совы: <%=night%><br>
    Матерые совы: <%=lateNight%><br>
    Ветераны кода: <%=ofCourseNight%><br><br>

    <%
        int summSalary = 0;
        int maxSalary = users.get(0).getQuest3();
        for (User user : users) {
            summSalary += user.getQuest3();
            if (maxSalary < user.getQuest3()) maxSalary = user.getQuest3();
        }
        int salary = (int) (summSalary/users.size());
    %>
    Средняя желаемая зарплата: <%=salary%>$<br>
    Самая високая желаемая зарплата: <%=maxSalary%><br><br>
    <%}%>
    <a href="index.jsp">Вернуться к анкете</a>
</body>
</html>
