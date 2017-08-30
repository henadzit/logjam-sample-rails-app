module LogjamAgent
  self.application_name = 'TestApp'
  self.environment_name = Rails.env

  self.add_forwarder(:zmq, :host => 'localhost', :port => 9604)

  self.obfuscated_cookies = [/_session\z/]
    
  self.ignore_asset_requests = Rails.env.development?
    
  self.log_device_ignored_lines = /^\s*Rendered/

  self.max_line_length = 2048
  self.max_bytes_all_lines = 1024 * 1024
end
