class Store < ActiveRecord::Base
	has_many :employees
	validates :annual_revenue, presence: true
	validates :name, presence: true
end
