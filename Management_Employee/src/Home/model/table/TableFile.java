
package Home.model.table;

public class TableFile {
    private String fileName;
    private String dateModified;
    private String size;

    public TableFile() {
    }

    
    public TableFile(String fileName, String dateModified, String size) {
        this.fileName = fileName;
        this.dateModified = dateModified;
        this.size = size;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getDateModified() {
        return dateModified;
    }

    public void setDateModified(String dateModified) {
        this.dateModified = dateModified;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
    
    
}
