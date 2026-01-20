package org.example.parkinglot.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;

import java.util.ArrayList;
import java.util.Collection;

import static jakarta.persistence.CascadeType.ALL;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id", nullable = false)
    private Long id;

    @Size(min = 3, max = 100, message = "Username must be between 3 and 100 characters")
    @Column(name = "username", unique = true, nullable = false, length = 100)
    private String username;

    @Email(message = "Email should be valid")
    @Column(name = "email", unique = true, nullable = false, length = 100)
    private String email;

    @Column(name = "password")
    private String password;

    @OneToMany(mappedBy = "owner", cascade = ALL)
    private Collection<Car> cars = new ArrayList<>();

    // --- GETTERS E SETTERS ---

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Collection<Car> getCars() {
        return cars;
    }

    public void setCars(Collection<Car> cars) {
        this.cars = cars;
    }
}