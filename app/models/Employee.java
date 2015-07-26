package models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by User on 25.07.2015.
 */
@Entity
@Table(name = "employee")
public class Employee extends AppModel{
    @Id
    public Long id;

    public String lastname;

    public String firstname;

    public String secondname;

    public String address;

    public String phone;

    public Long project_id;

}
