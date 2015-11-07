package iou

import grails.transaction.Transactional

@Transactional
class IouMailService {
    def changePassword(User user) {
        ResetPassword resetPassword=new ResetPassword()
        resetPassword.userid=user.id

        resetPassword.accessToken=new Date()
        resetPassword.save( flush: true ,failOnError: true)
        sendMail {
            to "${user.email}"
            subject "Change Password ${resetPassword.accessToken}"
            html "<a href=\"http://localhost:8080/iou/user/newPassword?&token=${resetPassword.accessToken}\">${user.firstName} ${user.lastName} /?&token=${resetPassword.accessToken}</a>"
        }


    }
    def userApprovalConfirm(User user) {
        sendMail {
            to "${user.email}"
            subject "Request approved"
            body "Your request has been approved"
        }
    }
    def userAddRequest(String email) {
        sendMail {
            to "${email}"
            subject "IOU"
            body "You are invited to register on IOU <a href=\\\"http://localhost:8080/iou/user/register?&token=${session.user.id}\\\">IOU.com /?&token=${session.user.id}</a>"
        }
    }

}
