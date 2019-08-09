
package Home.model;

public class BacThueTNCN {
    private int Luong;
    private float Thue;
    
    public BacThueTNCN(){
    }
    
    public BacThueTNCN(int Luong,float Thue){
        this.Luong = Luong;
        this.Thue = Thue;
    }

    public int getLuong() {
        return Luong;
    }

    public float getThue() {
        return Thue;
    }

    public void setLuong(int Luong) {
        this.Luong = Luong;
    }

    public void setThue(float Thue) {
        this.Thue = Thue;
    } 
}
