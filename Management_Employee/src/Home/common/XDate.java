package Home.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javafx.util.StringConverter;

public class XDate {

    public static StringConverter<LocalDate> converter = new StringConverter<LocalDate>() {
            DateTimeFormatter dateFormatter =
                      DateTimeFormatter.ofPattern("dd-MM-yyyy");
            
            @Override
            public String toString(LocalDate date) {
                if (date != null) {
                    return dateFormatter.format(date);
                } else {
                    return "";
                }
            }
            @Override
            public LocalDate fromString(String string) {
                if (string != null && !string.isEmpty()) {
                    return LocalDate.parse(string, dateFormatter);
                } else {
                    return null;
                }
            }
        }; 

    public static LocalDate toLocalDate(Date date){
        return new java.sql.Date(date.getTime()).toLocalDate();
    }
    
    public static Date toDate(String dateString) {
        try {
            SimpleDateFormat DATE_FORMATER = new SimpleDateFormat("dd/MM/yyyy");
            return DATE_FORMATER.parse(dateString);
        } catch (ParseException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public static String toString(Date date) {
        SimpleDateFormat DATE_FORMATER = new SimpleDateFormat("dd/MM/yyyy");
        if (date == null) {
            date = XDate.now();
        }
        return DATE_FORMATER.format(date);
    }

    /**
     * Lấy thời gian hiện tại
     *
     * @return java.sql.Date kết quả
     */
    public static Date now() {
        return new Date();
    }

}
