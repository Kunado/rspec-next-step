require 'rubygems'
require 'rspec'
require './message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end

  it 'should detect message with NG word' do
    expect(@filter).to be_detect('hello from foo')
  end

  it 'should not detect message without NG word' do
    expect(@filter).not_to be_detect('hello, world')
  end
end
