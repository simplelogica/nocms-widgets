require 'spec_helper'

describe NoCms::Widgets::Widget do

  let(:widget){ create(:nocms_widget, slug: 'test-widget') }
  let(:title){ Faker::Lorem.sentence }
  let(:body){ Faker::Lorem.paragraph }
  let(:block){ create(:nocms_block, title: title, body: body) }

  context "When visiting a page with widgets" do

    before do
      widget.blocks << block
      visit '/'
    end

    subject { page }

    it("should find the page") { expect(page.status_code).to eq 200 }

    it("should display default layout block") do
      expect(page).to have_content block.title
      expect(page).to have_content block.body
    end

  end

end