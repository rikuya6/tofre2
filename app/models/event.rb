class Event < ActiveRecord::Base
	has_many :refrigerators
	has_many :lists

	validates :place, presence: true
	validates :upper_num, presence: true
	validates :lower_num, presence: true

	#いらなきゃ消そう
	validates :upper_num, allow_nil: true, numericality:
				{ only_integer: true, more_than: :lower_num}
	validates :lower_num, allow_nil: true, numericality:
				{ only_integer: true, less_than: :upper_num}
end