module NoCms
  module Widgets
    class Engine < ::Rails::Engine
      isolate_namespace NocmsWidgets
    end
  end
end