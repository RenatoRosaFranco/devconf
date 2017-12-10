class Newsletter < ApplicationRecord
  self.table_name = 'newsletters'
  self.primary_key = 'id'

  scope :registered, -> { where(status: true) }
  scope :unregistered, -> { where(status: false) }

  before_create :signup, if: :valid?

  def signup
    self.status = true
    self.token = SecureRandom.urlsafe_base64
    self.confirmed_at = Date.today
  end

  def sendEmail
    begin
      NewsletterMailer.signup(self).deliver_now
    rescue Exception => exception
      raise StandardError, exception
    end
  end

  def cancel
    self.status = false
    self.token = nil
  end

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 30}

  validates :email,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: {minimum: 3, maximum: 245}

  validates :token,
            uniqueness: true

end
