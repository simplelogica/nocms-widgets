module NoCms
  module Widgets
    class Engine < ::Rails::Engine
      isolate_namespace NoCms::Widgets
    end
  end
end