class Ecommerce < MailForm::Base

  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :name, :validate =>true
  attributes :message, :validate =>true

  def headers
    {
      :to => %(<#{email}>),
      :subject => "Inquiry",
      :from => %(#{name}),
      :message => %("#{message}")
    }
  end

end
