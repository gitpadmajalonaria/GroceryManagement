class Main
  attr_accessor :value

  def choice
    puts "Choice Login Option :
      1. Shopkeeper
      2. Customer
      3. Exit"
    value = gets.to_i  
    case value
    when 1
      load 'shopkeeper.rb'
    when 2
      load 'customer.rb'
    when 3
      puts "Thanks ...\n"  
    else 
      puts "Invalid Choice !!"
      exit
    end
  end

  #def self.lists
  #  { salt: 40, pepper: 55, taco: 120, honey: 70, jelly: 87, ketchup: 80, 
  #          butter: 140, pickles: 125, sugar: 45, soap: 30, cleaner: 98, tea: 90 }     

  #end  
end

obj = Main.new
obj.choice  