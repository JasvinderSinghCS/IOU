package iou

class Group {
    String name;
    Double totalMoney
    static hasMany = [user: User]
    static belongsTo = User

    static constraints = {
        name(blank: false)
        totalMoney(nullable: true)
    }
}
