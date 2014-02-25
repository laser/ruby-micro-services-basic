class UserService
  config = YAML::load_file(File.join(Rails.root, 'config', 'services.yml'))['user_service']

  @@instance = Barrister::Rails::Client.new config['uri']

  def self.instance
    @@instance.UserService
  end
end
