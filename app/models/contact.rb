class Contact < MailForm::Base
  attributes :name,  :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message, :validate =>true

  def headers
    {
      :to => %(<#{email}>),
      :subject => "Package: ECOMMERCE",
      :from => %(#{name}),
      :message => %("#{message}")
    }
  end

end
