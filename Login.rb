#!usr/bin/ruby -w

#load 'Shopkeeper.rb'

puts "     ***** WELCOME TO LOGIN PAGE *****     "

puts "Choice Login Option :
       1. Shopkeeper 
       2. Customer"  
$value = gets.chomp.to_i
case  $value  
when   1
        load 'Shopkeeper.rb'
        include Option
        include List
when   2
        load 'Customer.rb'
        include Customer
else
       puts "Invalid Choice !!!"
end