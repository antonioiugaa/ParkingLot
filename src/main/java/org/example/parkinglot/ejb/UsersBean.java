package org.example.parkinglot.ejb;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.example.parkinglot.common.UserDto;
import org.example.parkinglot.entities.User;
import java.util.ArrayList;
import java.util.List;

@Stateless
public class UsersBean {

    @PersistenceContext
    EntityManager entityManager;

    public List<UserDto> findAllUsers() {
        List<User> users = entityManager.createQuery("SELECT u FROM User u", User.class).getResultList();

        List<UserDto> dtos = new ArrayList<>();
        for (User u : users) {
            dtos.add(new UserDto(u.getId(), u.getUsername(), u.getEmail()));
        }

        return dtos;
    }
}