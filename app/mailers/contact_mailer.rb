class ContactMailer < ApplicationMailer

  default_from 'no-reply@alvoroco.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sended.subject
  #
  def sended(contact)
    @contact = contact
    mail({
      to: contact.email,
      subject: "#{contact.name}, Recebemos seu e-mail com sucesso."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.received.subject
  #
  def received(contact)
    @contact = contact
    mail({
      to: "contato@code7even.com",
      subject: "Alvoroço Filmes recebeu um e-mail de #{contact.name}"
    })
  end
end
