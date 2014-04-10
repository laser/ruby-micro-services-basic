class Services

  def self.user_service
    @@services ||= proxy_services
    @@services[:user_service]
  end

  def self.proxy_services
    client   = Barrister::Rails::Client.new 'http://localhost:3001/user_service'

    { user_service: client.UserService }
  end

end
