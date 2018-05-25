class ContactsMailer < ApplicationMailer

  default :from => "denver.aleta91@gmail.com"
  default :to => "denver.aleta91@gmail.com"

  def new_message(contact)
    @contact =contact
    mail(:subject => "#{contact.subject}")

end
