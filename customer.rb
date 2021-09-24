
require '/home/rails/grocerymanagement/shopkeeper.rb'

class Customer
  attr_accessor :temp, :value, :price, :num, :sum, :total, :item
  
  def choose
    puts "Choices :
          1. BUY
          2. EXIT "
    value = gets.to_i
    case value
    when 1
         buy 
    when 2
         puts "Thanks...\n"
    else
         puts "Invalid choice ...\n"
    end
  end                  

  def buy

    def initialize
       @items = Shopkeeper.lists           
    end

    item = Main.lists
    item.each do |k, v| 
    print k,"\t\t"
    print v,"\n"
    end
  
    temp = Array.new()
    price = Array.new()
    num = Array.new()
    sum = Array.new()
    i = j = k = l = total = s = 0
  
    puts "Enter name and quantity of items you want to buy: " 
    item.each do |x,y| 
    input = gets.chomp.to_sym
    n = gets.to_i     
      if !input.empty? || n != 0  
        temp[i] = "#{input}"
        i = i + 1
        num[j] = n
        j = j + 1
      end
      if !input.empty? 
        y = item[input] 
        puts y  
        while (n>0) do
          s = y + y
          n = n - 1
        end
        sum[l] = s
        l = l + 1
        total = total + s
        price[k] = y 
        k = k + 1
      else     
        break
      end           
    end    
    puts " Item \t No. \t Price \t Total "
      enum = temp.each
      enum1 = num.each
      enum2 = price.each
      enum3 = sum.each
      loop do
      a1,a2,a3,a4 = enum.next,enum1.next,enum2.next,enum3.next
        puts " #{a1} \t #{a2} \t #{a3} \t #{a4} "
      end    
        puts "\nTotal is  : #{total}"
        puts "\t\t\t PAY  "
        puts "Thanks...\n"
      load 'main.rb'  
  end   

end

ctmr = Customer.new
ctmr.choose