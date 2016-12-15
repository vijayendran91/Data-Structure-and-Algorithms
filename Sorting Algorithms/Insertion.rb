puts "Enter the number of values"

size=(gets.chomp).to_i


array=[]

for i in 0..size-1
	array[i]=(gets.chomp).to_i
end

puts "#{array}"

for i in 1..size-1
	j=i
	while j>0 and array[j-1]>array[j]
		array[j-1],array[j]=array[j],array[j-1]
		j=j-1
	end

end

puts "#{array}"
