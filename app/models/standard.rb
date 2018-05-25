class Standard < MailForm::Base
  attribute :name,  :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :validate =>true


  def headers
    {
      :to => %(<#{email}>),
      :subject => "Package: STANDARD",
      :from => %(#{name}),
      :message => %("#{message}")
    }
  end

end
