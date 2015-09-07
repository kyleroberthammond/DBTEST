class Company < ActiveRecord::Base
	validates :company_name, presence: true
	validates :address, presence: true
end
