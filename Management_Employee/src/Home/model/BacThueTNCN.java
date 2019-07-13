/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Home.model;

/**
 *
 * @author USER
 */
public class BacThueTNCN {
    private int Luong;
    private float Thue;
    
    public BacThueTNCN(){
    }
    
    public BacThueTNCN(int Luong,float Thue){
        this.Luong = Luong;
        this.Thue = Thue;
    }
    
    /*
    *Getter
    */

    public int getLuong() {
        return Luong;
    }

    public float getThue() {
        return Thue;
    }
    
    /*
    *Setter
    */

    public void setLuong(int Luong) {
        this.Luong = Luong;
    }

    public void setThue(float Thue) {
        this.Thue = Thue;
    }
    
}
