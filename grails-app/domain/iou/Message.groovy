package iou

class Message {
    static  belongsTo = User
    User sentBy
    String sub
    String body
    Date dateCreated
    static constraints = {
        sub(nullable: true)
    }
}
