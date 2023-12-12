package sm.models;

import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@Builder
@Data
public class User
{
   private int id;
   private String firstName;
   private String lastName;
   private Integer age;
   private String email;
   private String  password;
   private Integer phone;
private boolean isadmin;

}
