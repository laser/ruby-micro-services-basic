class UserService

  def self.instance
    @@instance ||= create
    @@instance.UserService
  end

  def self.create
    config = YAML::load_file(File.join(Rails.root, 'config', 'services.yml'))['user_service']
    Barrister::Rails::Client.new config['uri']
  end
end
