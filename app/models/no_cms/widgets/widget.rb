 module NoCms::Widgets
  class Widget < ActiveRecord::Base

    has_and_belongs_to_many :blocks, class_name: "NoCms::Blocks::Block",
                            foreign_key: 'no_cms_blocks_block_id',
                            association_foreign_key: 'no_cms_widgets_widget_id'
    accepts_nested_attributes_for :blocks, allow_destroy: true

    validates :slug, presence: true, uniqueness: true

    before_validation :parameterize_slug

    def self.get slug
      self.where(slug: slug).first
    end

    private

    def parameterize_slug
      self.slug = self.slug.parameterize unless self.slug.blank?
    end

  end
end
