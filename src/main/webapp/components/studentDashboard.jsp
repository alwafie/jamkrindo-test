<%@ page import="main.java.com.example.servletapp.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Data</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h1>Student Data</h1>

<table>
    <thead>
    <tr>
        <th>Student ID</th>
        <th>Department</th>
        <th>Marks</th>
        <th>Pass</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Student> students = (List<Student>) request.getAttribute("students");
        for (Student student : students) {
    %>
    <tr>
        <td><%= student.getStudentID() %></td>
        <td><%= student.getDepartment() %></td>
        <td><%= student.getMarks() %></td>
    </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>
