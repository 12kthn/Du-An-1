//17/05/2019
//Pham Duy Bien - PS08445
//Lớp tiện ích Jdbc
//Chứa các phương thức định dạng và làm việc với Jtable
package com.polypro.helper;

import java.awt.Font;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableModel;

/**
 *
 * @author nucle
 */
public class TableHelper {


    /**
     * Định dạng header table
     *
     * @param table là Jtable cần định dạng
     * 
     */
    public static void formatHeader(JTable table) {
        //font chữ header
        JTableHeader header = table.getTableHeader();
        header.setFont(new Font("Dialog", Font.BOLD, 14));
        header.enable(false);

        //căn giữa header
        ((DefaultTableCellRenderer) header.getDefaultRenderer()).setHorizontalAlignment(JLabel.CENTER);
    }
    
    /**
     * Định dạng kích thước cột
     *
     * @param table là Jtable cần định dạng
     * @param args là danh sách các giá trị được cung cấp cho các tham số
     * kích thước cột
     * 
     */
    public static void formarCloumnSize(JTable table, int... args) {
        for (int i = 0; i < args.length; i++) {
            table.getColumnModel().getColumn(i).setPreferredWidth(args[i]);
        }
        table.setAutoResizeMode(JTable.AUTO_RESIZE_LAST_COLUMN);
    }
    
    /**
     * tim dòng chứa mã tren Jtable
     *
     * @param model là model của Jtable cần tìm
     * @param column là cột cần tìm
     * @param code là mã cần tìm
     * @return dòng chứa mã cần tìm, nếu không tìm thấy trả về 0
     * 
     */ 
    public static int getRowByCode(TableModel model, int column, String code) {
        for (int i = 0; i < model.getRowCount() - 1; i++) {
            if (model.getValueAt(i, column).equals(code)) {
                return i;
            }
        }
        return 0;
    }
}
