/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Class;

/**
 *
 * @author User
 */
import java.util.ArrayList;

public interface PurchaseOrderInterface {
    public String getPurchaseOrderID();
    public String getPoDate();
    public String getVendorID();
    public String getShippingMethod();
    public String getPaymentTerms();
    public String getRequestBy();
    public String getRequestStatus();
    public String getPlannedDeliveryDate();
    public void setVendor(Vendor vendor);
    public Vendor getVendor();
    public ArrayList<PurchaseOrderDetail> getPurchaseOrderDetails();
    public void setPurchaseOrderDetails(ArrayList<PurchaseOrderDetail> poDetails);
}
