require 'rails_helper'

RSpec.describe "article_tags/index", type: :view do
  before(:each) do
    assign(:article_tags, [
      ArticleTag.create!(
        article: nil,
        tag: nil
      ),
      ArticleTag.create!(
        article: nil,
        tag: nil
      )
    ])
  end

  it "renders a list of article_tags" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
