require 'rails_helper'

RSpec.describe "article_tags/new", type: :view do
  before(:each) do
    assign(:article_tag, ArticleTag.new(
      article: nil,
      tag: nil
    ))
  end

  it "renders new article_tag form" do
    render

    assert_select "form[action=?][method=?]", article_tags_path, "post" do

      assert_select "input[name=?]", "article_tag[article_id]"

      assert_select "input[name=?]", "article_tag[tag_id]"
    end
  end
end
