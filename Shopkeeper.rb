#!usr/bin/ruby -w
      
module List 
    $temp = Array.new()
    $val  = Array.new()
    $i = $j = 0
    $hash_ = {"salt"=>40, "pepper"=>55, "taco"=>120, "honey"=>70, "jelly"=>87, "ketchup"=>80, 
             "butter"=>140, "pickles"=>125, "sugar"=>45, "soap"=>30, "cleaner"=>98, "tea"=>90 }   

    def list()
        $hash_.each do |k, v| 
        print k,"\t\t"
        print v,"\n"
        end
    end  
end

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
                if input.empty? == false
                       $temp[$i] = "#{input}"
                       $i = $i + 1
                       $val[$j] = $hash_[input]
                       $j = $j + 1
                else
                    break     
                end
            end    
            
            puts " Name \t Price \n "
            name1 = $temp.each
            name2 = $val.each
            loop do 
                n1,n2 = name1.next,name2.next
                puts " #{n1}   #{n2}  "
            end

        when 3
            print "Enter name of item you want to delete : "
            key = gets.chomp
            if($hash_.delete(key))
                puts "\nItem deleted successfully !!!"
                puts "Updated list : "
                $hash_ = list()
            else
                puts "Wrong item name !!!"  
            end      
                
        else
            puts "Invalid choice.."
        end
    end
end             

class Shop
    include List
    include Option
end

 obj = Shop.new
 obj.list
 obj.chk
