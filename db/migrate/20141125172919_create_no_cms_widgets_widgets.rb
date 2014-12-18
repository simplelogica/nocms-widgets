class CreateNoCmsWidgetsWidgets < ActiveRecord::Migration
  def change
    create_table :no_cms_widgets_widgets do |t|
      t.string :slug, index: true

      t.timestamps
    end
  end
end
