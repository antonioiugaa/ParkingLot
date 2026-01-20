package org.example.parkinglot.ejb;

import jakarta.ejb.Stateless;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.example.parkinglot.common.UserDto;
import org.example.parkinglot.entities.User;
import org.example.parkinglot.entities.UserGroup;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

@Stateless
public class UsersBean {

    private static final Logger LOG = Logger.getLogger(UsersBean.class.getName());

    @PersistenceContext
    EntityManager entityManager;

    @Inject
    PasswordBean passwordBean;

    public List<UserDto> findAllUsers() {
        List<User> users = entityManager.createQuery("SELECT u FROM User u", User.class).getResultList();

        List<UserDto> dtos = new ArrayList<>();
        for (User u : users) {
            dtos.add(new UserDto(u.getId(), u.getUsername(), u.getEmail()));
        }

        return dtos;
    }

    public void createUser(String username, String email, String password, Collection<String> groups) {
        LOG.info("createUser");
        User newUser = new User();
        newUser.setUsername(username);
        newUser.setEmail(email);
        newUser.setPassword(passwordBean.convertToSha256(password));
        entityManager.persist(newUser);
        assignGroupsToUser(username, groups);
    }

    private void assignGroupsToUser(String username, Collection<String> groups) {
        LOG.info("assignGroupsToUser");
        if (groups != null) {
            for (String group : groups) {
                UserGroup userGroup = new UserGroup();
                userGroup.setUsername(username);
                userGroup.setUserGroup(group);
                entityManager.persist(userGroup);
            }
        }
    }
}