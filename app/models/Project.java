package models;

import com.avaje.ebean.ExpressionList;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by User on 25.07.2015.
 */
@Entity
@Table(name = "project")
public class Project extends AppModel{
    public static final AppModel.Finder<Long, Project> find = new AppModel.Finder<Long, Project>(
            Long.class, Project.class);
    @Id
    public Long id;

    public String name;

    public String company_id;

    public String address;

    public Long specialization_id;

    public static ExpressionList<Project> getProjects() {
        return find.where();
    }
}
