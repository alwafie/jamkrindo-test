package main.java.com.example.servletapp.model;

public class Student {
    private String studentID;
    private String studentName;
    private String department;
    private int marks;

    public Student(String studentID, String department, int marks) {
        this.studentID = studentID;
        this.department = department;
        this.marks = marks;
    }

    // Getters and Setters
    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }

    public boolean isPass() {
        return marks >= 40;
    }
}
