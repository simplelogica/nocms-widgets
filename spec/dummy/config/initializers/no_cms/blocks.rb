NoCms::Blocks.configure do |config|
  config.block_layouts = {
    'default' => {
      template: 'default',
      fields: {
        title: :string,
        body: :text
      }
    }
  }
end