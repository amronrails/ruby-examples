hash = {views: 300, clicks:500}
hash.each{|key,value| puts "#{key}: #{value}"}
hash.each_with_index{|item,i| puts "#{i}: #{item[0]} => #{item[1]}"}


#for loop alterantives

#.times -- not very flexible
10.times {puts "hello"}
10.times{|i| "hello number #{i}"}

#range --- more flexible (i start and end are changeable)
(0..12).each {|i| puts i}
(0).upto(12) do |i| 
  puts i
end

#while ! ===> until also logically can be used as do while
response =nil
until response == 'q'
  puts "Please input q to quit"
  response = gets.chomp
end

# next similar to continue(skips to next iteration)
0.upto(10) do |i|
  next unless i.even? 
  puts i
end

#.select! takes a condition and filters values according to this condition
a = [1,2,3,4,5,6,7,8,9,10]
# a = a.select{|item| item.odd?}
a.select!{|item| item.odd?}

#.reject is the opposite of select
a.reject {|i| i.even?} # returns the same as in line 32

#.find similar to select but returns the first element
# similar to the difference between .where and .find_by_* in rails
a.find{|i| i.between?(2,5)} #returns 2

#.any? and .all?
a.any?{|i| i.even?} #true
a.all? {|i| i.odd?} #false

#collect is alias for map
sum =0
a.collect{|a| sum+=a}

#.inject takes accumulator and i and returns the final accumularor(sum) `reduce is alias to inject`
puts a.inject{|summation,i| summation+=i}




