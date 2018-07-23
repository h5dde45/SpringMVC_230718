package ru.tutorial.project.repos;

import org.springframework.data.repository.CrudRepository;
import ru.tutorial.project.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String filter);
}
