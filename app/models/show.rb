class Show < ApplicationRecord
	belongs_to :channel
	after_save :emailsend

	def emailsend
		if self.favorite.present?
			SendEmailJob.set(wait_until: self.starttime - (0.5 * 60 * 60) ).perform_later(self)
		end			
	end
end
