
# require '/home/rails/grocerymanagement/main.rb'

class Shopkeeper  
  attr_accessor :value, :temp, :items, :item_list
  
  def initialize
    @items = Shopkeeper.lists           
  end

 def self.lists
    { salt: 40, pepper: 55, taco: 120, honey: 70, jelly: 87, ketchup: 80, 
            butter: 140, pickles: 125, sugar: 45, soap: 30, cleaner: 98, tea: 90 }     

  end  

  def list
    items.each do |k, v| 
      print k,"\t\t"
      print v,"\n"
    end
    option
  end
    
  def option   
    puts "\n\n  *** OPTION *** "
    puts " 1. UPDATE    2. ADD    3. REMOVE      4. LISTING     5. EXIT"
    value = gets.to_i
    case value
    when 1
      update              
    when 2
       add
    when 3
      delete
    when 4
      listing  
    when 5
       puts "Thanks...\n"                  
    else
      puts "Invalid choice..."
    end
  end


 def update 
    print "Enter name of item : "
    name = gets.chomp.to_sym
    print "Enter price of item : "
    price = gets.to_i
    items.update(name, price)
    puts "\nItem updated successfully !!!"
    puts "Updated list : "
    list
  end


  def add 
    print "Enter name of item : "
    name = gets.chomp
    print "Enter price of item : "
    price = gets.to_i
    items.store(name, price)
    puts "\nItem added successfully !!!"
    puts "Updated list : "
    list
  end

  def listing
    puts "Enter name of item :"
    input = gets.chomp.to_sym
    if items[input]
      puts " Name \t Price \n "
      puts " #{input} \t #{items[input]}"  
    else
      puts "No record found \n"
    end
  end  

  def delete
    print "Enter name of item you want to delete : "
    key = gets.chomp.to_sym
    if (items.delete(key))
      puts "\nItem deleted successfully !!!"
      puts "Updated list : "
      list
    else
      puts "Wrong item name !!!"  
    end     
  end  

end             

sk = Shopkeeper.new
sk.list