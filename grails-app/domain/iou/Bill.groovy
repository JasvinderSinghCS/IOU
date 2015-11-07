package iou

class Bill {
    Double totalBill
    String description
    static hasMany = [user: User]
    static belongsTo = User


    static constraints = {
        description(maxSize: 50)
    }
}
