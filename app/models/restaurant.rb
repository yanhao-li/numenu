class Restaurant < ActiveRecord::Base
	include Rails.application.routes.url_helpers
	has_many :dishes
	has_many :restaurant_reviews

	def qrcode(uri)
		RQRCode::QRCode.new(restaurant_url(self, :host => uri)).as_svg(
			offset: 0,
			color: '000',
			module_size: 2
		)
	end

end