package ru.tutorial.project.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.tutorial.project.domain.User;

public interface UserRepo extends JpaRepository<User,Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
