=being
  Within a specified range count the number of occurances of a digit.
  Find out how many times 9 appears between 1 - 20
=end

#Approach - 1
def how_many(max, value = 9)
  total = 0
  (1..max).each do |number|
    var = number.to_s.count(value.to_s)
	total += var
  end

  total
end

puts "There are #{how_many(20)} 9's in 120"

#Approach - 2
str = ""; 
1.upto(20) {|i| str << i.to_s }; puts str.split("").count("9")


#Approach - 3
(1..20).inject(0){|t,i| t+= i.to_s.count("9"); t}
