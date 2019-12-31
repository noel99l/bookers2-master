class NotificationMailer < ActionMailer::Base
  default from: "noelkaikei@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    @url = "http://localhost:3000/users/" + @user.id.to_s
    mail(
      subject: "会員登録が完了しました。", #メールのタイトル
      to: @user.email #宛先
      )
  end
end