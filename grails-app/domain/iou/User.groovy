package iou

class User {
    String firstName
    String lastName
    String username
    String password
    Double moneyOwed=0
    Double moneyDue=0
    String email
    long phone
    //String pic_path
    Date token
    Date dateCreated
    Date lastUpdated
    static hasMany=[friends: User,group: Group,bill: Bill]
    static mapping = {
        friends lazy: false
        bill lazy: false
    }

    static constraints = {
        token(nullable: true)
        email(blank: false, email: true,unique: true)
        firstName(blank: false )
        lastName(blank: false , nullable: true)
        username(unique: true,blank: false, size: 5..20)
        password(blank: false)
        phone(size: 10)


//        pic_path(nullable: true,validator: {val,obj->
//            if(!val){
//                val= "${System.getProperty("user.home")}/rsconvent/web-app/images/userPics/index.jpeg"
//                return true
//            }
//        })
    }
}
