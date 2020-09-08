class Channel < ApplicationRecord
	has_many :shows,foreign_key: "channel_id",class_name: "Show"
end
