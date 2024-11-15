<%@ page import="main.java.com.example.servletapp.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
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
        <th>Student Name</th>
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
        <td><%= student.isPass() ? "Yes" : "No" %></td>
    </tr>
    <% } %>
    </tbody>
</table>

<h2>Pass Percentage by Department</h2>
<table>
    <thead>
    <tr>
        <th>Department</th>
        <th>Pass %</th>
    </tr>
    </thead>
    <tbody>
    <%
        Map<String, Double> passPercentageMap = (Map<String, Double>) request.getAttribute("passPercentageMap");
        for (Map.Entry<String, Double> entry : passPercentageMap.entrySet()) {
    %>
    <tr>
        <td><%= entry.getKey() %></td>
        <td><%= String.format("%.2f", entry.getValue()) %> %</td>
    </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>
