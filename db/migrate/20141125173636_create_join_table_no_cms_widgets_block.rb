class CreateJoinTableNoCmsWidgetsBlock < ActiveRecord::Migration
  def change
    create_join_table :no_cms_widgets_widgets, :no_cms_blocks_blocks do |t|
      t.index :no_cms_widgets_widget_id, name: :no_cms_widgets_blocks_widget
      t.index :no_cms_blocks_block_id, name: :no_cms_widgets_blocks_block
    end
  end
end
