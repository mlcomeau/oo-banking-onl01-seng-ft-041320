class Transfer
  attr_accessor :status, :transfer_amount
  attr_reader :sender, :receiver
  def initialize (sender, receiver, num)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = num
  end

  def valid?
    sender.valid? and receiver.valid?
  end

end
