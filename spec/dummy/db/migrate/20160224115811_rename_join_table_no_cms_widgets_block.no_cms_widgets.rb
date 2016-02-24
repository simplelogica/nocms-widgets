# This migration comes from no_cms_widgets (originally 20160224115259)
class RenameJoinTableNoCmsWidgetsBlock < ActiveRecord::Migration
  def self.up
    if ActiveRecord::Base.connection.table_exists? 'no_cms_blocks_blocks_no_cms_widgets_widgets'
      rename_table :no_cms_blocks_blocks_no_cms_widgets_widgets, :no_cms_blocks_blocks_widgets_widgets
    end
  end
end
