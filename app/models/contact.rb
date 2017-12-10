class Contact < Object
   include ActiveModel::Conversion
   include ActiveModel::Validations

   attr_accessor :name, :email, :subject, :message

   def initialize(params={})
      @name = params[:name]
      @email = params[:email]
      @subject = params[:subject]
      @message = params[:message]
   end

   def sendEmail
      begin
        ContactMailer.sended(self).deliver_now
        ContactMailer.received(self).deliver_now
      rescue Exception => exception
        raise StandardError, exception
      end
   end

   def persisted?
      false
   end

   validates :name,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: {minimum: 3, maximum: 30}

   validates :email,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: {minimum: 3, maximum: 245}

   validates :subject,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: {minimum: 3, maximum: 50}

   validates :message,
             presence: true,
             uniqueness: false,
             length: {minimum: 3, maximum: 800}


end
