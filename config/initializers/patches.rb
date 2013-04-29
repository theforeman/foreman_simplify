# Runs before each request in development (controllers reload each request),
# before first request in production (controllers don't reload).
# http://apidock.com/rails/ActionDispatch/Callbacks/to_prepare/class
ActionDispatch::Callbacks.to_prepare do
  patch_dir = File.expand_path("#{File.dirname(__FILE__)}/../../app/patches")
  Dir["#{patch_dir}/**/*.rb"].each do |file_name|
    load file_name
  end
end
