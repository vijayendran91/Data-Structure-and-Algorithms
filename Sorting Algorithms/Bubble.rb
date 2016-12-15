

puts "Enter the number of values to be sorted"

size=(gets.chomp).to_i

array=[]

puts "Enter the values"

for i in 0..size-1
	array[i]=(gets.chomp).to_i
end


n=size-1

puts "\n#{array}"


array.each do
	for j in 1..size-1
		i=j-1
		if array[i]>array[j]
			array[i],array[j]=array[j],array[i]	
		end		
	end
end


puts "Sorted Array : #{array}"

