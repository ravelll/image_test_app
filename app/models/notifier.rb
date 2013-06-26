class Notifier < ActionMailer::Base
  default :from => 'menchikatsu@paperboy.co.jp'

  def signup_email(user)
    mail( :to => user.email,
        :subject => 'Thanks for signing up')
  end
end
