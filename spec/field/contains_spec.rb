describe FlexibleFilter::Field::Contains do
  let(:model) { Category }
  let(:field) { 'name' }
  let(:value) { 'George' }
  let(:instance) { described_class.new(model,field,value) }
  let(:arel) { instance.arel }
  let(:sql) { arel.to_sql }
  let(:desc) { instance.to_s }

  it ".arel" do
    expect(sql).to eq(%q("categories"."name" ILIKE '%George%'))
  end

  it ".to_s" do
    expect(desc).to eq(%q(category name contains George))
  end
end
