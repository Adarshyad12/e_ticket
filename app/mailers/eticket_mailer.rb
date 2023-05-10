class EticketMailer < ApplicationMailer


def shipping_confirmation_email

    @user = params[:user]
    @reservation = params[:reservation]

    mail(to: @user.email, subject: "Your ticket is confirmed")

end
end
