module UsersHelper
	def differentiate_path(path, *args)
    attempt = request.parameters["attempt"]
    args.unshift(path).push(:attempt => attempt ? attempt.to_i + 1 : 1)
    send(*args)
  end
end
