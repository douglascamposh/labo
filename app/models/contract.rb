class Contract < ActiveRecord::Base
	belongs_to :mosaic
	belongs_to :frame
end
