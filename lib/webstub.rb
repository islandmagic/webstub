gem_name = File.basename(__FILE__).gsub(/\.rb$/, "")

Motion::Project::App.setup do |app|
  app.development do
    # Defer this so we don't include the code in release mode
#    gem_files = Dir.glob(File.join(File.dirname(__FILE__), gem_name, "**/*.rb"))
#    app.files = gem_files + app.files
  end
end
