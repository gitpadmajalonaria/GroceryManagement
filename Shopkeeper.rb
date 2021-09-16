#!usr/bin/ruby -w
    
$temp = " "
$hash_ = {"Salt" => 40 , "Pepper" => 55, "Taco" => 120, "Honey" => 70, "Jelly" => 87, "Ketchup" => 80, 
         "Butter" => 140, "Pickles" => 125, "Sugar" => 45, "Soap" => 30, "Cleaner" => 98, "HandWash" => 130 }   

module Option
    def chk
        puts "  *** OPTION *** "
        puts " 1. ADD    2. LIST    3. REMOVE"
        $value = gets.chomp.to_i

        case $value
        when 1
            print "Enter name of item : "
            name = gets.chomp
            print "Enter price of item : "
            price = gets.chomp.to_i
            $hash_.store(name, price)
            puts "\nItem added successfully !!!"
            puts "Updated list : "
            $hash_ = list 
                  
        when 2
            puts "Enter name of item :"
            $hash_.each do |x,y|  
            input = gets.chomp          
                if input == x
                print x
                $temp = $temp + " #{x} "   
                end 
            end          
            puts "List is : #{$temp} "

        when 3
            print "Enter name of item you want to delete : "
            key = gets.chomp
            if($hash_.delete(key))
                puts "Item deleted !!!"
            else
                puts "Wrong item name !!!"  
            end      
            puts "\nItem deleted successfully !!!"
            puts "Updated list : "
            $hash_ = list
                
        else
            puts "Invalid choice.."
        end
    end
end             

class Shopkeeper
    include Option
    def list()
        $hash_.each do |k, v| 
        print k    ,"\t\t"
        print v,"\n"
        end
    end
end

 obj = Shopkeeper.new
 obj.list
 obj.chk
