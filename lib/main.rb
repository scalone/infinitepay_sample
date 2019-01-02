require 'da_funk'
require 'infinite_pay'

class Main < Device
  include DaFunk::Helper

  def self.call
    options = {:min => 1, :max => 12, :mode => Device::IO::IO_INPUT_DECIMAL}
    amount = form("Valor:", options)
    if amount != Device::IO::CANCEL
      InfinitePay.new(amount.to_f)
    end
    true
  end

  def self.version
    "1.0.0"
  end
end
