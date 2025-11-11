package org.example.parkinglot.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Column(name = "password")
    private String password;

    @Column(name = "email")
    private String email;

    @Column(name = "username")
    private String username;


    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id", nullable = false)
    private Long id;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}