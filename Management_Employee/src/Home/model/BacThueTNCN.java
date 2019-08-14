
package Home.model;

public class BacThueTNCN {
    private int Luong;
    private double Thue;
    
    public BacThueTNCN(){
    }
    
    public BacThueTNCN(int Luong,double Thue){
        this.Luong = Luong;
        this.Thue = Thue;
    }

    public int getLuong() {
        return Luong;
    }

    public double getThue() {
        return Thue;
    }

    public void setLuong(int Luong) {
        this.Luong = Luong;
    }

    public void setThue(double Thue) {
        this.Thue = Thue;
    } 
}
