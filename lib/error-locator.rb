module ErrorLocator
  def self.call(env)
    req = Rack::Request.new(env)
    clicked_line = req.params['line']
    #location format: 'filename:linenumber'
    location = clicked_line[/[^:]+[:]\d+/]
    if !location.blank?
      location = File.expand_path(location)
      filename = location[/[^:]/]
      `$EDITOR "#{location}"` if File.exists?(filename)
    end
    [200, {}, [] ]
  end
end

require 'error-locator/action_dispatch_ext'

