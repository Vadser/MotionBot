class MessageParser
  attr_reader :message
  
  def initialize(message)
    @message = message
  end

  def call
    case message
    when '/'
  end

  private


end

rails new MotionBot \
  --api \
  --skip-action-mailer \
  --skip-active-record \
  --skip-action-cable \
  --skip-test \
  --database=postgresql
  -m https://raw.githubusercontent.com/telegram-bot-rb/rails_template/master/rails_template.rb