package iou

import comobjs.UserCo
import spock.util.mop.Use

import javax.validation.constraints.Null

class UserController {
    IouMailService IouMailService
    def index() { }
    def login() { }
    def home(){
        /*if(!session.user.friends.isEmpty())
        {*/
            List<User> friends=session.user.friends.toList();
        if(session.user.friends.isEmpty())
        println("hello")
            for(friend in session.user.friends)
                println(friend.firstName)
                [friends: friends,bills: session.user.bill]

            /*if(session.user.bill!=null){
            def c = session.user.bill.createCriteria()
            List<Bill> bill = c.list {
                maxResults(10)
                order("totalBill", "desc")

            }
            }*/
            //[bills: session.user.bill]
        //}
    }
    def auth() {
        User user=User.findByUsernameAndPassword(params.username,params.password)
        if(user!=null)
        {
            session.user=user
            redirect(controller: 'user',action: 'home')
        }
        else
        {
            flash.message = "Not a registered User"
            redirect(action: 'register')
        }
    }
    def logout()
    {
        session.invalidate()
        flash.message="Succesfully Logged Out"
        redirect(action: 'login')
    }
    def changepassword() {}
    def setpassword(){

        User user=User.findByUsername(params.username)
        //user.password=params.password
        //user.save(flush: true,failOnError: true)
        if(user){
            IouMailService.changePassword(user)
            flash.message="Check mail"
            redirect(action: 'login')
        }
        else{
            flash.message="No username found"
            redirect(action: 'login')
        }
    }
    def register(){
    if(params.token)
    {
        flash.refno=params.token;
    }
    }
    def newuser(UserCo userCo){
        if(userCo.hasErrors()) {
            flash.message = "Something went wrong"
            redirect(action: 'register')
        }
        User user=new User()
        bindData(user,userCo.getProperties(),[excludes: ['confPassword']])
        if(flash.refno)
        {
            User refuser=User.findById(Long.parseLong(flash.refno))
            refuser.friends.add(user)
            refuser.save(flush: true,failOnError: true)
            user.friends.add(refuser)
        }

        user.save(flush: true,failOnError: true)
        IouMailService.userApprovalConfirm(user)
        flash.message="Registered successfully"
        redirect(action: 'login')
    }
    def newPassword(){
        //println("${params.token}")
        if(!session.user){
            ResetPassword resetPassword=ResetPassword.findByAccessToken(params.token)
        }
        //println("on this line")
        //User user=User.findByUsername("123456")
        if(!session.user && resetPassword){
            session.user=resetPassword
        }
        else if(!resetPassword){
            flash.message="Token Expired"
            redirect(action: "login")
        }


    }
    def addFriend(){
        //println(params.email)
        User user=User.findByEmail(params.email)
        if(user)
        {
            user.addToFriends(session.user)
            session.user.addToFriends(user)
            user.save(flush: true,failOnError: true)
            session.user.save(flush: true,failOnError: true)
            /*User current=session.user
            session.invalidate()
            current.friends.add(user)
            current.save(flush: true,failOnError: true)
            session.user=current*/
        }
        else
        {
            IouMailService.userAddRequest(params.email)
        }
        redirect(action: 'home')

    }
    def addBill(){

    }

}
