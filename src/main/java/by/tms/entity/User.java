package by.tms.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {

    private static long idInc = 1;
    private long id = idInc++;
    private String name;
    private String login;
    private String password;

    public User(String name, String login, String password) {
        this.name = name;
        this.login = login;
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
