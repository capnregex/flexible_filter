describe FlexibleFilter::Field::In do
  let(:model) { Category }
  let(:field) { 'id' }
  let(:values) { (1..3).to_a }
  let(:instance) { described_class.new(model,field,values) }
  let(:arel) { instance.arel }
  let(:sql) { arel.to_sql }
  let(:desc) { instance.to_s }

  it ".arel" do
    expect(sql).to eq(%q("categories"."id" IN (1, 2, 3)))
  end

  it ".to_s" do
    expect(desc).to eq(%q(category id is in 1, 2, 3))
  end
end
