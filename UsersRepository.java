package sm.repository;

import sm.models.User;

import java.util.List;
import java.util.UUID;

public interface UsersRepository extends CrudRepository<User> {
    User findByEmail(String login);

    List <User> findAllByAge(int age);

    void saveCookieUser(String uuid, int userId);

    User findUserByUuid(String uuid);

    void updateUserProfile(User user);
    User findById(int id);
    boolean authenticateUser(String email, String password);

    User findByLogin(String email);


    User saveCookieUser(UUID uuid, int userId);
}