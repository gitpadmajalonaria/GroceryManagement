class Main
  def choice
    puts "Choice Login Option :
      1. Shopkeeper
      2. Customer"
    value = gets.to_i   
    case value
    when 1
      load 'shopkeeper.rb'
    when 2
      load 'customer.rb'
    else 
      puts "Invalid Choice !!"    
    end
  end
end

obj = Main.new
obj.choice    