<%@ page import="ru.appline.logic.Model" %><%--
  Created by IntelliJ IDEA.
  User: askar
  Date: 06.10.2020
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="ru.appline.logic.Model" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <h1>Домашняя страница по работе с пользователями</h1>
  Введите ID пользователя (0 - список всех пользователей)
  <br/>
  Доступно: <%
    Model model = Model.getInstance();
    out.print(model.getFromList().size());
  %>
  <form method="get" action="get">
    <label>ID:
    <input type="text" name="id">
      <br/>
    </label>
    <button type="submit">Поиск</button>
  </form>

  <a href="addUser.html">Создать нового пользователя</a>
  </body>
</html>
