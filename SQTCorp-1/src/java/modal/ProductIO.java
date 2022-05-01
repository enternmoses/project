
package modal;

public class ProductIO {
    Product product;
    int num;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public ProductIO() {
    }

    public ProductIO(Product product, int num) {
        this.product = product;
        this.num = num;
    }
    
    
}
