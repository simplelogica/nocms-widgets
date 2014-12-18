require 'spec_helper'

describe NoCms::Widgets::Widget do
  it_behaves_like "model with required attributes", :nocms_widget, [:slug]
  it_behaves_like "only current model with has and belongs to many relationship", :nocms_widget, :nocms_block, :blocks

  context "when creating" do

    let(:widget) { create :nocms_widget, slug: testing_slug}
    let(:testing_slug) { "testing slug" }

    subject { widget }

    it("should parameterize slug") { expect(widget.slug).to eq testing_slug.parameterize }

  end

  context "when updating" do

    let(:widget) { create :nocms_widget }
    let(:testing_slug) { "testing slug" }

    before { widget.update(slug: testing_slug) }

    subject { widget }

    it("should parameterize slug") { expect(widget.slug).to eq testing_slug.parameterize }

  end

  context "when duplicating a slug" do

    let(:widget) { create :nocms_widget}
    let(:duplicated_widget) { build :nocms_widget, slug: widget.slug}

    subject { duplicated_widget }

    it("should not be valid") { expect(subject).to_not be_valid }

  end
end