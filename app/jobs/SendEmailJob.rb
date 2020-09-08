
class SendEmailJob < ActiveJob::Base

  queue_as :default
  
  def perform(show)
  	 mail(to: "<%= show.user.email %>", subject: 'Reminder of your show')
  end

end