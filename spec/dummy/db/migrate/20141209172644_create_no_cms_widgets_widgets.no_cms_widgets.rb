# This migration comes from no_cms_widgets (originally 20141125172919)
class CreateNoCmsWidgetsWidgets < ActiveRecord::Migration
  def change
    create_table :no_cms_widgets_widgets do |t|
      t.string :slug, index: true

      t.timestamps
    end
  end
end
