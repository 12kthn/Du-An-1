//17/05/2019
//Pham Duy Bien - PS08445
//Lớp tiện ích XDate
//Chứa các phương thức chuyển đổi thời gian và 
//chuỗi giúp lập trình sau này khi xử lý thời gian dễ dàng hơn.

package com.polypro.helper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class XDate {

    //biến định dạng ngày/tháng/năm
    static final SimpleDateFormat DATE_FORMATER = new SimpleDateFormat("dd/MM/yyyy");

    /**
     * Chuyển đổi String sang Date
     *
     * @param date là String cần chuyển
     * @param pattern là định dạng thời gian
     * @return java.sql.Date kết quả
     */
    public static java.sql.Date toDate(String date, String... pattern) {
        try {
            if (pattern.length > 0) {
                DATE_FORMATER.applyPattern(pattern[0]);
            }
            if (date == null) {
                return new java.sql.Date(XDate.now().getTime());
            }
            DATE_FORMATER.setLenient(false);
            return new java.sql.Date(DATE_FORMATER.parse(date).getTime());
        } catch (ParseException ex) {  
            ex.printStackTrace();
            return null;           
        }
    }
    
    /**
     * Chuyển đổi từ Date sang String
     *
     * @param date là Date cần chuyển đổi
     * @param pattern là định dạng thời gian
     * @return String kết quả
     */
    public static String toString(Date date, String... pattern) {
        if (pattern.length > 0) {
            DATE_FORMATER.applyPattern(pattern[0]);
        }
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
    public static java.sql.Date now() {
        return new java.sql.Date(new Date().getTime());
    }

    /**
     * Bổ sung số ngày vào thời gian
     *
     * @param date thời gian hiện có
     * @param days số ngày cần bổ sung váo date
     * @return Date kết quả
     */
    public static Date addDays(Date date, int days) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        c.add(Calendar.DATE, days);
        return c.getTime();
    }

    /**
     * Bổ sung số ngày vào thời gian hiện hành
     *
     * @param days số ngày cần bổ sung vào thời gian hiện tại
     * @return Date kết quả
     */
    public static Date add(int days) {
        Calendar c = Calendar.getInstance();
        c.setTime(XDate.now());
        c.add(Calendar.DATE, days);
        return c.getTime();
    }

}