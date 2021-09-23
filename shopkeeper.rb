class Shopkeeper
  
  attr_accessor :value, :temp, :item

  def item_list 
    item = {salt: 40, pepper: 55, taco: 120, honey: 70, jelly: 87, ketchup: 80, 
            butter: 140, pickles: 125, sugar: 45, soap: 30, cleaner: 98, tea: 90 }   
    list(item)
  end
 # obj.item_list

  def option(item)
    puts "\n\n  *** OPTION *** "
    puts " 1. ADD    2. LIST    3. REMOVE      4. EXIT"
    value = gets.to_i
    case value
    when 1
      add(item)               
    when 2
      listing(item)
    when 3
      delete(item)
    when 4
      puts "Thanks...\n"                  
    else
      puts "Invalid choice..."
      option
    end
  end

  def add(item) 
    print "Enter name of item : "
    name = gets.chomp
    print "Enter price of item : "
    price = gets.to_i
    item.store(name, price)
    puts "\nItem added successfully !!!"
    puts "Updated list : "
    list(item)
  end

  def listing(item)
    temp = Array.new()
    val = Array.new()
    i = j = 0
    puts "Enter name of item :"
    item.each do |x,y|  
    input = gets.chomp 
      if input.empty? == false
        temp[i] = "#{input}"
        i = i + 1
        val[j] = item[input]
        j = j + 1   
      else
        break  
      end
    end    
    puts " Name \t Price \n "
    name1 = temp.each
    name2 = val.each
    loop do 
      n1,n2 = name1.next,name2.next
      puts " #{n1} \t #{n2}  "
    end
    option(item)
  end  

  def delete(item)
    print "Enter name of item you want to delete : "
    key = gets.chomp
    if (item.delete(key))
      puts "\nItem deleted successfully !!!"
      puts "Updated list : "
      list(item)
    else
      puts "Wrong item name !!!"  
    end     
  end  
  
  def list(item)
    item.each do |k, v| 
      print k,"\t\t"
      print v,"\n"
    end  
    option(item)
  end 

end             

sk = Shopkeeper.new
sk.item_list