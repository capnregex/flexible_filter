require 'rails_helper'

RSpec.describe "article_tags/edit", type: :view do
  let(:article_tag) {
    ArticleTag.create!(
      article: nil,
      tag: nil
    )
  }

  before(:each) do
    assign(:article_tag, article_tag)
  end

  it "renders the edit article_tag form" do
    render

    assert_select "form[action=?][method=?]", article_tag_path(article_tag), "post" do

      assert_select "input[name=?]", "article_tag[article_id]"

      assert_select "input[name=?]", "article_tag[tag_id]"
    end
  end
end
