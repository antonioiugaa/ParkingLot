package org.example.parkinglot.common;

public class UserDto {
    private Long id;
    private String username;
    private String email;

    public UserDto(Long id, String username, String email) {
        this.id = id;
        this.username = username;
        this.email = email;
    }

    // Getter e Setter sono OBBLIGATORI per la JSP
    public Long getId() { return id; }
    public String getUsername() { return username; }
    public String getEmail() { return email; }
}