Ubezp::App.helpers do

	def text_field_helper(f, attr, options={})
		attr = attr.to_sym

		field_opts = {}

		# options.each do |k, v|
		# 	case k.to_sym
		# 		when :k
		# 			field_opts[:v] = v
		# 		else
		# 			fail "undefined option"
		# 		end
		# end

		field = f.text_field(attr)
		error = error_message_on f.object, attr

		[field, error].join("\n")
	end

end