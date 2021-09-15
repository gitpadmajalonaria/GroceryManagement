#!usr/bin/ruby -w
    
module Option
    def chk
        puts "  *** OPTION ***"
        puts " 1. ADD    2. LIST    3. REMOVE"
        $value = gets.chomp.to_i
        case $value
        when 1
                print "Enter name of item. "
                name = gets.chomp
                print "Enter price of item. "
                price = gets.chomp.to_i
                $hash_.store(name, price)
                puts "updated list : #{$hash_}"
                

        when 2
                puts "Listing items..."
        when 3
                print "Enter name of item you want to delete"
                key = gets.chomp
                if($hash_.delete(key))
                    puts "Item deleted !!!"
                else
                    puts "Wrong item name !!!"  
                end      
                puts "Updated list : #{$hash_}"
        else
            puts "Invalid choice.."
        end
    end
end             

       
class Shopkeeper

    load 'Common.rb'
    include Common
    include Option
end
 obj = Shopkeeper.new
 $hash_ = obj.items
 $hash_.each do |k, v| 
        print k,"\t\t"
        print v,"\n"
    end
 obj.chk
 
 
