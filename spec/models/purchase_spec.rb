require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject do
    Purchase.new(author_id: 1, name: 'Food', amount: 25.5)
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

  it 'amount should not be empty' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'name should be equal to Financial' do
    expect(subject.name).to eql 'Food'
  end

  it 'user_id should be 1' do
    expect(subject.author_id).to eql 1
  end

  it 'amount should be 1' do
    expect(subject.amount).to eql 25.5
  end
end
