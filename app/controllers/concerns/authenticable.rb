module Authenticable

	# overwrites Devise method
	def current_user
		@current_user ||= User.find_by(auth_token: request.headers['Authorization'])
	end	

	def authenticate_with_token!
		puts "****** current user: #{current_user.present?}"
		render json: { errors: "No autenticado" },
			status: 401 unless current_user.present?
	end
end
