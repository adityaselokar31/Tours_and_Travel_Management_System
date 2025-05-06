package com.demo.bean;
import java.sql.*;

public class UserBean {
    private String fullname;
    private String email;
    private String password;
    private String role;

    // Getters and Setters
    public String getFullname() { return fullname; }
    public void setFullname(String fullname) { this.fullname = fullname; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    // Database Connection
    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism_db", "root", "root");
        } catch (ClassNotFoundException e) {
            throw new SQLException("JDBC Driver not found", e);
        }
    }

    // Login Method
    public boolean loginUser() {
        try (Connection conn = getConnection()) {
            String sql = "SELECT fullname, role FROM users WHERE email = ? AND password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password); // Hash password in real applications
            
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                fullname = rs.getString("fullname");
                role = rs.getString("role");
                return true; // Login success
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Login failed
    }
}
