class Mark < ActiveRecord::Base
	validates :news,
		presence: true,
		length: {in: 2..20}
end
