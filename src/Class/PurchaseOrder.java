/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

import java.util.ArrayList;

public class PurchaseOrder {
    private String purchaseOrderID;
    private String poDate;
    private String vendorID;
    private String shippingMethod;
    private String paymentTerms;
    private String requestBy;
    private String requestStatus;
    private String plannedDeliveryDate;
    private ArrayList<PurchaseOrderDetail> purchaseOrderDetails;
    private Vendor vendor;

    public PurchaseOrder(String purchaseOrderID, String poDate, String vendorID, String shippingMethod,
                         String paymentTerms, String requestBy, String requestStatus, String plannedDeliveryDate) {
        this.purchaseOrderID = purchaseOrderID;
        this.poDate = poDate;
        this.vendorID = vendorID;
        this.shippingMethod = shippingMethod;
        this.paymentTerms = paymentTerms;
        this.requestBy = requestBy;
        this.requestStatus = requestStatus;
        this.plannedDeliveryDate = plannedDeliveryDate;
    }

    public String getPurchaseOrderID() {
        return purchaseOrderID;
    }

    public String getPoDate() {
        return poDate;
    }

    public String getVendorID() {
        return vendorID;
    }

    public String getShippingMethod() {
        return shippingMethod;
    }

    public String getPaymentTerms() {
        return paymentTerms;
    }

    public String getRequestBy() {
        return requestBy;
    }

    public String getRequestStatus() {
        return requestStatus;
    }

    public String getPlannedDeliveryDate() {
        return plannedDeliveryDate;
    }
    
    public void setVendor(Vendor vendor){
        this.vendor = vendor;
    }
    
    public Vendor getVendor() {
        return vendor;
    }
    
    public void setPurchaseOrderDetails(ArrayList<PurchaseOrderDetail> poDetails) {
        this.purchaseOrderDetails = poDetails;
    }

    public ArrayList<PurchaseOrderDetail> getPurchaseOrderDetails() {
        return purchaseOrderDetails;
    }
    
}

