class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def initialize (sender, receiver, num)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = num
  end

  def valid?
    sender.valid? and receiver.valid?
  end

  def execute_transaction
    if sender.balance > amount
      receiver.deposit(amount)
    else
      "Transaction rejected. Please check your account balance."
    end
  end


end
