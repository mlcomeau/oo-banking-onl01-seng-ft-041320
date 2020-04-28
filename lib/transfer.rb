class Transfer
  attr_accessor :status,
  attr_reader :sender, :receiver, :transfer_amount
  def initialize (sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = transfer_amount
  end

  def valid?
    sender.valid? and receiver.valid?
  end

  def execute_transaction
    if sender.balance > transfer_amount
      receiver.deposit(transfer_amount)
    else
      "Transaction rejected. Please check your account balance."
    end
  end


end
