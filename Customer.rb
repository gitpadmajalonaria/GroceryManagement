#!usr/bin/ruby -w

module List 
    $temp1 = 0
    $hash = {"salt"=>40, "pepper"=>55, "taco"=>120, "honey"=>70, "jelly"=>87, "ketchup"=>80, 
             "butter"=>140, "pickles"=>125, "sugar"=>45, "soap"=>30, "cleaner"=>98, "tea"=>90 }   

    def list()
        $hash.each do |k, v| 
        print k,"\t\t"
        print v,"\n"
        end
    end  
end

module Customer 
    def cust
        puts "Enter name and quantity of items : "
        $hash.each do |x,y|  
        input = gets.chomp
        n = gets.chomp.to_i
        name = " "
            if input.empty?
                break
            else     
                y = $hash[input] 
                name = name + x
                puts y
                $temp1 = $temp1 + y * n
            end    
        end    
        puts "Total is : #{$temp1}"

        
        puts "\n\n"
   
        print "Item name \t"
        print "Item no. \t"
        print "price \n"

    end   
end

class Buy
    include List
    include Customer
end

obj = Buy.new
obj.list
obj.cust
