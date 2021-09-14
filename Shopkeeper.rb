#!usr/bin/ruby -w
module Shopk
    
    def items
        hash={"ITEMS   " => "PRICE", "Salt    " => 40 , "Pepper  " => 55, "Taco    " => 120, 
            "Honey   " => 70, "Jelly   " => 87, "Ketchup   " => 80, "Butter  " => 140, "Pickles  " => 125,
            "GarbageBag" => 45, "DishWash" => 30, "Cleaner  " => 98, "HandWash" => 130 }

        hash.each do |k, v| 
                print k,"\t\t"
                print v,"\n"
        end
    end
    def option
        puts "   OPTION !!"
        puts " 1. ADD    2. LIST    3. REMOVE"
        $value = gets.chomp.to_i
        case $value
        when 1
                print "Enter name and price of item. "
                key = gets.chomp
                val = gets.chomp.to_i
                hsh = hash.store(key,val)
                puts "#{hash}"
        when 2
            puts "Listing items..."
        when 3
                print "Enter name of item you want to delete"
                value = gets.chomp.to_s
                puts  hash.delete(value)
                puts "#{hash}"
        else
            puts "Invalid choice.."
        end
    end   
end             

       
class Shopkeeper
    include Shopk

end
 obj = Shopkeeper.new
 obj.items
 obj.option
