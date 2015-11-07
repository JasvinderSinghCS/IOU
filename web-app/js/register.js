/**
 * Created by jasvinder on 18/10/15.
 */
$(document).ready(function () {
    $("#registerform").validate({
        rules:{
            firstName : "required",
            lastName : "required",
            username : {
                required : true,
                minlength : 5,
                maxlength : 20
            },
            password : {
                required : true,
                minlength : 6,
                maxlength : 20
            },
            cnfPassword : {
                required : true,
                minlength : 6,
                maxlength : 20,
                equalTo : "#password"
            },
            email : {
                required : true,
                email : true
            },
            phone : "required"
        },
        messages:{
            firstName : "Please Enter your First Name",
            lastName : "Please Enter your Last Name",
            userName : {
                required : "Please Enter your User Name",
                minlength : "Your user name must consist of atleast 5 letters",
                maxlength : "Your user name cannot contain more than 20 letters"
            },
            password : {
                required : "Please Enter your Password",
                minlength : "Your password must consist of atleast 6 letters",
                maxlength : "Your Password cannot contain more than 20 letters"
            },
            cnf_password : {
                required : "Please Enter your Password",
                minlength : "Your password must consist of atleast 6 letters",
                maxlength : "Your Password cannot contain more than 20 letters",
                equalTo : "Confirm Password must be equal to your password"
            },
            email : {
                required : "Please Enter your Email Address",
                email : "Please enter valid email"
            },

            phone : "Please enter your contact number"
        },
        errorContainer: $('#errorContainer'),
        errorLabelContainer: $('#errorContainer ul'),
        wrapper: 'li'
    });

});

