class PictureMailer < ApplicationMailer
  def picture_mail(picture, email)
   @picture = picture

   mail to: email, subject: "お問い合わせの確認メール"
  end
end
