# frozen_string_literal: true
class LoggingThing
  include L2met::Log
end

describe L2met::Log do
  let(:thing) { LoggingThing.new }

  before do
    ENV['APP_NAME'] ||= 'thing'
    L2met::Log.default_log_level = :debug
  end

  after do
    L2met::Log.default_log_level = :fatal
  end

  it 'can log things' do
    thing.log measure: 'something.already' do
      'is this awesome'.upcase + '?!?!'
    end
  end
end
