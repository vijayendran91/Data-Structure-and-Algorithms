
puts "Enter the value"
val=gets.to_i
coins=[]
puts "Enter number of coins (one among the coins must have value 1) \n  and also enter more than one value\n"
no_coins=gets.to_i
coins=[]
puts "Enter the coin values"

for i in 1..no_coins
	coins[i]=gets.to_i
end


t=[]

for i in 1..no_coins
	t1=[]
	for j in 1..val
		
		if j%coins[i]==0
			t1[j]=j/coins[i]
		end
		if j<coins[i]
			t1[j]=t[i-1][j]
		end
		if j%coins[i]!=0 and j>coins[i]
			x=j/coins[i]
			y=t[i-1][j%coins[i]]
			t1[j]=[x+y,t[i-1][j-1]].min		
		end
		
	end
		
	t[i]=t1

end

#find_coins(t,no_coins,val,coins)

while i>1 or j>1 do 
	if t[i][j]!=t[i-1][j]
        print coins[i]
		j=j-coins[i]
    end
	if t[i][j]==t[i-1][j]
		i=i-1
	end
end

