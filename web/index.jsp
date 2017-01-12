<%--
  Created by IntelliJ IDEA.
  User: smith
  Date: 12.01.17
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%String login = (String) session.getAttribute("user_Login");%>
  <h1>Анкета</h1>
  <form action="/send" method = "POST">
      Имя:<input type="text" name = "name"><br>
      Фамилия:<input type="text" name = "surname"><br>
      Возраст:<input type="number" name = "age"><br>
      Если бы вам предложили спасти принцессу на любом языке программирования,<br>
      какой бы вы выбрали?<br>
      <input type = "radio" name = "quest1" value = "Java">Java<br>
      <input type = "radio" name = "quest1" value = "C++">C++<br>
      <input type = "radio" name = "quest1" value = "not-a-Pascal">Что угодно кроме Pascal!<br>
      Когда вам удобнее всего писать код:<br>
      <input type = "radio" name = "quest2" value = "night">Ночью<br>
      <input type = "radio" name = "quest2" value = "late-night">Поздно ночью<br>
      <input type = "radio" name = "quest2" value = "of-course-at-night">Конечно же ночью<br>
      Кажите размер желаемой зарплаты:<br>
      <input type="number" name = "quest3">$<br>
      <input type="submit" />
  </form>
  </body>
</html>
