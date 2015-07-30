puts "Do you LOVEEEEE me? Answer Y/N:"
answer = gets.chomp.downcase

while (answer == 'n')
	puts "Do you LOVEEEEE ME?"
	answer = gets.chomp.downcase
end

if (answer == 'y')
	puts "And I will always love you!" 
end
