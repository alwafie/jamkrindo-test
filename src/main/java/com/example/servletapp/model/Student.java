package main.java.com.example.servletapp.model;

public class Student {
    private String studentID;
    private String department;
    private int marks;

    public Student(String studentID, String department, int marks) {
        this.studentID = studentID;
        this.department = department;
        this.marks = marks;
    }

    public String getStudentID() {
        return studentID;
    }

    public String getDepartment() {
        return department;
    }

    public int getMarks() {
        return marks;
    }

    public boolean isPass() {
        return marks >= 40;
    }
}
