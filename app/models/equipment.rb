class Equipment < ActiveRecord::Base
	has_many :reports
	validates :serial, uniqueness: { case_sensetive: false}

end
