module ErrorLocator
  def self.call(env)
    req = Rack::Request.new(env)
    line = req.params['line']
    filename = line[/[^:]+[:]\d+/]
    f = File.expand_path(filename)
    `$EDITOR "#{f}"`
    [200, {}, [] ]
  end
end

require 'error-locator/action_dispatch_ext'

