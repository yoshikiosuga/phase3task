class PictureMailer < ApplicationMailer
  def picture_mail(picture, email)
   @picture = picture

   mail to: email, subject: "画像投稿の確認メール"
  end
end
