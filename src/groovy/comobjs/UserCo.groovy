package comobjs

import grails.validation.Validateable
import iou.User

/**
 * Created by jasvinder on 14/10/15.
 */
@Validateable
class UserCo {
    String firstName
    String lastName
    String username
    String password
    String confPassword
    String email
    long phone
    static constraints={
        email(blank: false, email: true)
        firstName(blank: false )
        lastName(blank: false , nullable: true)
        username(unique: true,blank: false, size: 5..20)
        password(blank: false)
        phone(size: 10)
        confPassword(validator: {val,obj->
            if(val==obj.password)
                return true
            else
                return false
        })
    }


}
