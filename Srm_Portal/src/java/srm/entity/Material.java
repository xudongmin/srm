/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.entity;

/**
 *
 * @author zac2078106
 */
public class Material {
    private String material_name;//物料大类名称
    private String material_value;

    public String getMaterial_name() {
        return material_name;
    }

    public void setMaterial_name(String material_name) {
        this.material_name = material_name;
    }

    public String getMaterial_value() {
        return material_value;
    }

    public void setMaterial_value(String material_value) {
        this.material_value = material_value;
    }
    
}
