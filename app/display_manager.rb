require_relative 'transaction_processor'

class DisplayManager
  include TransactionFormattable

  def initialize(transaction_processor)
    @transaction_processor = transaction_processor
  end

  def format_product_list(products)
    result = "Available Products:\n"
    products.each do |code, prod|
      result << "#{code} - #{prod[:name]} - #{prod[:price]}\n"
    end
    result
  end

  def format_transaction_result(product_name, change)
    last_transaction = @transaction_processor.last_transaction_details

    "Dispensed #{product_name} with change #{change}\nTransaction details: #{last_transaction}"
  end
end
