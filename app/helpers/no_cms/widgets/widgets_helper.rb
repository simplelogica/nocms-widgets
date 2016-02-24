module NoCms
  module Widgets
    module WidgetsHelper

      def render_widget_block block, options = {}
        block_template = "no_cms/blocks/blocks/#{block.template}"

        # And now decide if we use cache or not
        if options[:cache_enabled]
          Rails.cache.fetch "#{block_template}/#{block.id}/#{block.updated_at.to_i}" do
            render block_template, block: block
          end
        else
          render block_template, block: block
        end
      end

    end
  end
end
