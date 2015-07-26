package models;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by User on 15.07.2015.
 */
public class StatementUtils {

    public static String getTryLessonQuery(long userId, int lessonId, boolean isExecute){
        return String.format("INSERT INTO lesson_execute( " +
                "user_id, lesson_id, is_execute) " +
                "VALUES (%s, %s, %s);", userId, lessonId, isExecute);
    }

    public static void executeQuery(String query){
        Connection conn = play.db.DB.getConnection();
        try {
            Statement stmt = conn.createStatement();
            stmt.execute(query);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
