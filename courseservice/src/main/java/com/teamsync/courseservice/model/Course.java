package com.teamsync.courseservice.model;

public class Course {
    private int courseId;
    private int teamSize;

    public Course(int courseId, int teamSize) {
        this.courseId = courseId;
        this.teamSize = teamSize;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public int getTeamSize() {
        return teamSize;
    }

    public void setTeamSize(int teamSize) {
        this.teamSize = teamSize;
    }

    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", teamSize=" + teamSize +
                '}';
    }
}
