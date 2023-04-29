require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    Group.new(author_id: 1, name: 'Financial', icon: 'https://img.freepik.com/premium-vector/grocery-food-cardboard-box-icon-isolated-white-vector-flat-illustration_623508-34.jpg')
  end

  before { subject.save }

  it 'user_id should not be empty' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'name should not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon should not be empty' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'name should be equal to Financial' do
    expect(subject.name).to eql 'Financial'
  end

  it 'user_id should be 1' do
    expect(subject.author_id).to eql 1
  end
end
