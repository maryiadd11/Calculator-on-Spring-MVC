package by.tms.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;


@Getter
@Setter
@NoArgsConstructor
public class User {

    private static long idInc = 1;
    private long id = idInc++;

    @NotBlank
    private String name;

    @NotBlank
    @Length (min = 4, max = 8, message = "Допустимая длина логина - от 4 до 8 символов")
    private String login;

    @NotBlank
    @Length (min = 6, max = 16, message = "Допустимая длина пароля - от 6 до 16 символов")
    private String password;


    public User(String name, String login, String password) {
        this.name = name;
        this.login = login;
        this.password = password;
    }

    public User(String login, String password) {
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
