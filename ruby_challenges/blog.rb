class Blog
	
	@@all_blog_posts = []
  	@@num_blog_posts = 0
 
  def self.all
    @@all_blog_posts
  end
 
  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
	
end

puts "Create new blog post? Type: Y/N "
	answer = gets.chomp.downcase

while (answer == 'n')
	puts "BLOG POST NOT CREATED"
	answer = gets.chomp.downcase
end 

if (answer == 'y')

		puts "Enter title. " 
		get_title = gets.chomp
		

		puts "Enter date. "
		get_date = gets.chomp
		

		puts "Enter author's name "
		get_author_name = gets.chomp

		puts "#{get_title} has been created by: #{get_author_name} on #{get_date}."
 
end

class Posts < Blog

	def initialize=(title_name)
		@title_name = title_name
	end 

	def get_date=(publish_date)
		@publish_date = publish_date
	end

	def get_author_name=(author_name)
		@author_name = author_name
	end

	def save
		Blog.add(self)
	end

end



=begin

Create a class that will be the blueprint for each ‘BlogPost’ object. 

This class should set a title, content, a publish date, and maybe even an author for each NEW post. You may want to do this by modifying the initialize method OR you may want you craft your own method, with all the special behaviour in it.
use logic to create a prompt saying “do you want to create another blog post? [Y/N]”. If you hit Y the script will run through the questions to add content. If you hit N, you will stop entering content.

Hmm, shouldn’t you be practicing inheritance? Create a parent class called something like ‘Blog’, that will keep track of how many blog posts you have created, and what to do with them.

Save all blog posts in an array or a hash (you learned about these in lesson 7), in the parent class. Experiment with both. Push every new blog post into said array. Look up ‘Array’ methods in ruby to figure out how this might be possible.

Let’s create a variable that will count our blog posts, starting at 0, and a method that will increment with each new blog post created and appended to our array of posts. Should this be an instance variable or a class variable? In what class should this counter be?

Create a ‘publish’ method that will output all your blog posts to the terminal Would that be a class or instance method?
Make it so that blog posts can have authors

=end