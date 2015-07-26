package models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by User on 25.07.2015.
 */
@Entity
@Table(name = "position")
public class Position extends AppModel{

    @Id
    public Long id;

    public String name;
}
