
module Avocado
  module Fields
    module <%= class_name %>
      class ToolProvider
        ROOT_PATH = Pathname.new(File.join(__dir__))

        def self.boot
          Avocado::App.initializing do
            Avocado::App.script '<%= class_name.parameterize %>_field.js', "#{File.dirname(__FILE__)}/frontend"
          end
        end
      end
    end
  end
end