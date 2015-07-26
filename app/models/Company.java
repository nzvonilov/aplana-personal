package models;

import com.avaje.ebean.ExpressionList;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by User on 25.07.2015.
 */
@Entity
@Table(name = "company")
public class Company extends AppModel{
    public static final AppModel.Finder<Long, Company> find = new AppModel.Finder<Long, Company>(
            Long.class, Company.class);
    @Id
    public Long id;

    public String name;

    public String address;

    public static ExpressionList<Company> getCompanies() {
        return find.where();
    }
}
