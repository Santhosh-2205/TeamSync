package com.teamsync.courseservice.resource;

import com.teamsync.courseservice.dao.CourseDAO;
import com.teamsync.courseservice.model.Course;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/courses")
public class CourseResource {

    private final CourseDAO courseDAO = new CourseDAO();

    @PostMapping("/init")
    public String createTable() {
        courseDAO.createCourseTable();
        return "Course table created";
    }

    @PostMapping
    public Course addCourse(@RequestBody Course course) {
        courseDAO.addCourse(course);
        return course;
    }

    @GetMapping("/{id}")
    public Course getCourse(@PathVariable int id) {
        return courseDAO.getCourseById(id);
    }
}
