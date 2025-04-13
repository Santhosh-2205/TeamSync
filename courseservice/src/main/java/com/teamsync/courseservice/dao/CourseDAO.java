package com.teamsync.courseservice.dao;

import com.teamsync.courseservice.model.Course;
import java.sql.*;

public class CourseDAO {
    private static final String URL = "jdbc:postgresql://localhost:5432/courseservice_db"; // Change the database URL
    private static final String USER = "postgres";
    private static final String PASSWORD = "password";

    public void createCourseTable() {
        String sql = "CREATE TABLE IF NOT EXISTS course (" +
                     "course_id SERIAL PRIMARY KEY, " +
                     "team_size INT NOT NULL)";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement stmt = conn.createStatement()) {
            stmt.executeUpdate(sql);
            System.out.println("Course table created successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addCourse(Course course) {
        String sql = "INSERT INTO course (team_size) VALUES (?) RETURNING course_id";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement ps = conn.prepareStatement(sql)) {
    
            ps.setInt(1, course.getTeamSize());
    
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int generatedId = rs.getInt(1);
                course.setCourseId(generatedId); 
            }
    
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Course getCourseById(int courseId) {
        String sql = "SELECT * FROM course WHERE course_id = ?";
        Course course = null;

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, courseId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                course = new Course(rs.getInt("course_id"), rs.getInt("team_size"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return course;
    }
}
