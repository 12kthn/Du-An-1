
package Home.DAO;

import Home.common.XDate;
import Home.model.table.TableFile;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Date;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class TableFileDAO {
    public ObservableList<TableFile> getData(String startsWith, String endsWith){
        ObservableList<TableFile> data = FXCollections.observableArrayList();
        File dir = new File("C:\\Program Files\\Microsoft SQL Server\\MSSQL11.MSSQLSERVER\\MSSQL\\Backup");
        File[] files = dir.listFiles(new FilenameFilter() {
            @Override
            public boolean accept(File dir, String name) {
                return name.endsWith(endsWith) && name.startsWith(startsWith);       
            }
        });
        
        for (File file : files) {
            TableFile tableFile = new TableFile();
            
            Date date = new Date(file.lastModified());
            
            tableFile.setFileName(file.getName());
            tableFile.setDateModified(XDate.toString(date, "dd/MM/yyyy HH:mm:ss"));
            tableFile.setSize(Math.round(file.length()/1024.0) + " KB");
            
            data.add(tableFile);
        }
        
        return data;
    }
}
