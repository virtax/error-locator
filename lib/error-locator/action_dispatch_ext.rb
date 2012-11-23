require 'action_dispatch/middleware/show_exceptions'

module ActionDispatch
  # This middleware rescues any exception returned by the application and renders
  # nice exception pages if it's being rescued locally.
  class ShowExceptions
    self.send(:remove_const, 'RESCUES_TEMPLATE_PATH')
    RESCUES_TEMPLATE_PATH = File.join(File.dirname(__FILE__), 'templates')

    def full_trace(exception)
      exception.backtrace
    end
  end
end