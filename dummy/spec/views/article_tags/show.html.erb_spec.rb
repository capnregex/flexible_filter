require 'rails_helper'

RSpec.describe "article_tags/show", type: :view do
  before(:each) do
    assign(:article_tag, ArticleTag.create!(
      article: nil,
      tag: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
