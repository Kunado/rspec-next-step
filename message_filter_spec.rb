require 'rubygems'
require 'rspec'
require './message_filter'

describe MessageFilter, 'with argument "foo"' do
  subject { MessageFilter.new('foo') }

  it { is_expected.to be_detect('hello from foo') }
  it { is_expected.not_to be_detect('hello world') }
end

describe MessageFilter, 'with arguments "foo", "bar"' do
  subject { MessageFilter.new('foo', 'bar') }

  it { is_expected.to be_detect('hello from foo') }
end
