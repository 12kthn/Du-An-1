package Home.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import javafx.util.StringConverter;

public class XDate {

    public static StringConverter<LocalDate> converter = new StringConverter<LocalDate>() {
        DateTimeFormatter dateFormatter
                = DateTimeFormatter.ofPattern("dd-MM-yyyy");

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

    public static LocalDate toLocalDate(Date date) {
        return new java.sql.Date(date.getTime()).toLocalDate();
    }
    
    public static Date toDate(LocalDate localDate) {
        return java.sql.Date.valueOf(localDate);
    }

    public static java.sql.Date toSqlDate(Date date){
        return new java.sql.Date(date.getTime());
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
     * @return Date kết quả
     */
    public static Date now() {
        return new Date();
    }

    /**
     * Số tháng trong năm
     *
     */
    public static int monthOfYear(int year) {
        int month = 12;
        if (year == LocalDate.now().getYear()) {
            month = LocalDate.now().getMonthValue();
        }
        return month;
    }

    /**
     * Số ngày trong tháng
     */
    public static int daysInMonth(int year, int month) {
        Calendar calendar = Calendar.getInstance();
        
        calendar.set(year, month - 1, 1);//Tháng tính từ 0
        
        int daysInMonth = calendar.getActualMaximum(calendar.DAY_OF_MONTH);
        return daysInMonth;
    }

    //Ngày cao nhất trong tháng (ngày không lớn hơn ngày hiện tại)
    public static int maxDaysInMonth(int year, int month) {
        //Tháng, năm hiện tại thì trả về ngày hôm nay
        if (year == LocalDate.now().getYear() && month == monthOfYear(year)) {
            return LocalDate.now().getDayOfMonth();
        }
        //Ngược lại trả về tháng lớn nhất nếu
        return daysInMonth(year, month);
    }
    
    //Tính số ngày nghỉ trong tháng
    public static int holidaysInMonth(int year, int month){
        //Khởi tạo Calendar
        Calendar calendar = Calendar.getInstance();
        int holidaysInMonth = 0;//Biến số ngày nghỉ
        initHolidays();
        
        //Vòng lặp kiểm tra từ ngay 1 đến ngày cuối tháng
        for (int day = 1; day <= daysInMonth(year, month); day++) {
            calendar.set(year, month - 1, day);
            int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
            //Tính số ngày chủ nhật
            if (dayOfWeek == Calendar.SUNDAY) {
                holidaysInMonth++;
            }
        }
        //Số ngày lễ trong tháng
        String monthName = calendar.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.getDefault());
        for (String key : Holidays.keySet()) {
            if (monthName.equals(key)) {
                holidaysInMonth += Holidays.get(key).length;
            }
        }
        
        return holidaysInMonth;
    }

    public static HashMap<String, Integer[]> Holidays = new HashMap<>();;
    
    public static void putHolidays(String month, int ...days){
        Integer listDays[] = new Integer[days.length];
        for (int i = 0; i < listDays.length; i++) {
            listDays[i] = days[i];
        }
        Holidays.put(month, listDays);
    }
    
    private static HashMap<String, Integer[]>  initHolidays(){
        Holidays.clear();
        putHolidays("January", 1);
        putHolidays("April", 30);
        putHolidays("May", 1);
        putHolidays("September", 2);
        return Holidays;
    }
    
    /**
     * Kiểm tra vào truyền vào có phải là ngày lễ hay không
     * @return true or false
     */
    public static Boolean isHoliday(Date date){
        initHolidays();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        
        //Kiểm tra date là ngày Chủ nhật
        if (calendar.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY) {
            return true;
        }
        
        //Kiểm tra date là ngày lễ
        //Lay tên tháng
        String monthName = calendar.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.getDefault());
        //Lấy ngày
        int day = calendar.get(Calendar.DAY_OF_MONTH);
        for (String key : Holidays.keySet()) {
            if (monthName.equals(key)) {
                for (Integer dayOfMonth : Holidays.get(key)) {
                    if (day == dayOfMonth) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
