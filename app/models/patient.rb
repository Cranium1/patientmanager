class Patient < ActiveRecord::Base
	validates :name_first, presence: true
	validates :name_last, presence: true
end