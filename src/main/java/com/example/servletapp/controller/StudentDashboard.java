package main.java.com.example.servletapp.controller;

import main.java.com.example.servletapp.model.Student;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

@WebServlet("/studentDashboard")
public class StudentDashboard extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Student> students = new ArrayList<>();
        students.add(new Student("S1", "Dep 1", 35));
        students.add(new Student("S2", "Dep 1", 70));
        students.add(new Student("S3", "Dep 1", 60));
        students.add(new Student("S4", "Dep 1", 90));
        students.add(new Student("S5", "Dep 2", 30));
        students.add(new Student("S6", "Dep 3", 32));
        students.add(new Student("S7", "Dep 3", 70));
        students.add(new Student("S8", "Dep 3", 20));


        Map<String, List<Student>> departmentMap = new HashMap<>();
        for (Student student : students) {
            departmentMap.computeIfAbsent(student.getDepartment(), k -> new ArrayList<>()).add(student);
        }


        Map<String, Double> passPercentageMap = new HashMap<>();
        for (Map.Entry<String, List<Student>> entry : departmentMap.entrySet()) {
            List<Student> deptStudents = entry.getValue();
            long passCount = deptStudents.stream().filter(Student::isPass).count();
            double passPercentage = (double) passCount / deptStudents.size() * 100;
            passPercentageMap.put(entry.getKey(), passPercentage);
        }

        request.setAttribute("students", students);
        request.setAttribute("passPercentageMap", passPercentageMap);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/studentData.jsp");
        dispatcher.forward(request, response);
    }
}
