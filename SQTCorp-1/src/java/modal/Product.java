
package modal;

public class Product {
    String code;
    String name;
    String image;
    Float price;
    String brand;
    String sex;
    String dial;
    String type;
    Float diameter;
    String shape;
    String stuff;
    String source;
    String description;

    public Product(String code, String name, String image, Float price) {
        this.code = code;
        this.name = name;
        this.image = image;
        this.price = price;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getDial() {
        return dial;
    }

    public void setDial(String dial) {
        this.dial = dial;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Float getDiameter() {
        return diameter;
    }

    public void setDiameter(Float diameter) {
        this.diameter = diameter;
    }

    public String getShape() {
        return shape;
    }

    public void setShape(String shape) {
        this.shape = shape;
    }

    public String getStuff() {
        return stuff;
    }

    public void setStuff(String stuff) {
        this.stuff = stuff;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Product() {
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Product(String code, String name, String image, Float price, String brand, String sex, String dial, String type, Float diameter, String shape, String stuff, String source, String description) {
        this.code = code;
        this.name = name;
        this.image = image;
        this.price = price;
        this.brand = brand;
        this.sex = sex;
        this.dial = dial;
        this.type = type;
        this.diameter = diameter;
        this.shape = shape;
        this.stuff = stuff;
        this.source = source;
        this.description = description;
    }
    
    
    
    
}
