puts "-----How to Get The String Length-------"
#You can also use length, instead of size, they do the same thing.

p "Ramchandra".length
p "ruby".size

puts "---------How to Check If A String Is Empty--------"
p "".size ==0 # both methods return ,true if string present, otherwise return false
p "cc".empty? #Or even better, use the empty? method.

#A blank string is a string that has either zero-length, or is composed ONLY of white space characters.

puts "----------What is String Interpolation?------"
#String interpolation allows you to combine strings together:

name = "World"
p "Hello #{name}"

#What some people don’t know is that you can have actual code inside the interpolation.

puts "The total is #{1+1}"
#Ruby calls the to_s method on the string interpolation block, this tells the object to convert itself into a string.

puts "-----How to Extract a Substring---------"
#A substring is a smaller part of a string, it’s useful if you only want that specific part, like the beginning, middle, or end.

=begin
"One way is to use a starting index & a number of characters, 
inside square brackets, separated by commas.""

Rules :- 
1.The first number is the starting index.

2.The second number is how many characters you want.

3.You can also use a range if you want to do something like “get all the characters but the last one”.

=end

#syntax :- string[starting-index , number-of-characters]

str = "HelloWorld"
p str[1,3] # => "ell"


string = "abc123"
p string[0..-5] #but the second index is the ending index (inclusive). This -2 is the second to last character, and -1 is the end of the string.
# "abc12" 

 string[0..3]="raja"   #If you want to remove or replace the substring.
 p string


 puts "--------How to Find Out If a String Contains Another String----------"

 string = "Today is Saturday"
 #p string.include?("adfgh")

 p string.index("day") #character ke hisab se index provide karta hai , jo character first me milta hai.

puts "------------How to Pad a Ruby String-----------"
#One way to pad a string is to use the rjust method with two arguments:

binary_string = "1101"
p binary_string.rjust(8, "0")
# "00001101"

binary_string1 = "1101"
p binary_string1.ljust(8, "0")
#"11010000"


puts "-----Compare Strings Ignoring Case--------"
# create some strings
str1 = "a"
str2 = "a"
str3 = "edpresso"
str4 = "EDPRESSO"
str5 ="bava"
str6 = "mava"

# compare strings
#Asci value me compare karta hai.

a = str1.casecmp(str2) # "a=97" == "a=97" return :- 0
b = str3.casecmp(str1) # "e=101"  > "a=97" return :- 1
c = str5.casecmp(str6) # "b=98"  < "m-109" return :- -1

# print out returned values
puts a
puts b
puts c

puts "-------Another way to cheacking Ascii value letter--"
puts "a".casecmp "c"  # "a=97" < "c=99" return:- -1
puts "c".casecmp "b"   # "c=99" > "b=98" return:- 1
puts "b".casecmp "b"   # "b=98" == "c=98" return:- 0

puts "----How to Trim a String & Remove White Space---"

extra_space= "   trim    "
p extra_space.strip  #ye method left or right white space remove karegi string se
p extra_space.lstrip #ye method left white space remove karegi string se
p extra_space.rstrip #ye method Right white space remove karegi string se


puts "-----------String Prefix & Suffix---------"
#You can use the start_with? method to check if a string starts with a specific prefix.

string = "Hello ruby programing"
p string.start_with? "Hii"
p string.start_with? "He"
p string.end_with? "in"
p string.end_with? "ing"

#In addition, Ruby 2.5 introduced the delete_prefix & delete_suffix methods, which may be useful to you.
p string.delete_prefix("Hello")
p string.delete_suffix("ing")

puts "----Convert a String to An Array of Characters----"
#Taking a string & breaking it down into an array of characters is easy with the split method.
 str = "a b c d"
 p str.split # by default comma me separate kar ek array return karti hai
=begin
By default split will use a space as the separator character, but you can pass an argument into this method to specify a different separator.

Here’s how you can split a list of comma-separated values (CSV):

But if you are working with CSV data specifically you may want to consider using the CSV class from the standard library.
 This class can do things like reading column headers, so it makes things easier for you.
=end
 
 csv = "e, f,g ,h"
 p csv.split(",")

 puts "-----Convert an Array to a String-----"
 #If you would like to take an array of strings & join these strings into a big string you can use the join method.
  arr = ["a","b","c","d"]
  p arr.join
  p arr.join("-") #It’s also possible to pass an argument to join, this argument is the character separator.

puts "----------Convert a String Into An Integer----------"
#If you want to convert a string like "49" into the Integer 49 you can use the to_i method.
 str = "a"
 p str.to_i #Notice that if you try this with a string that contains no numbers then you will get 0.

str = "40"
p str.to_i

puts "----------Check If A String Is A Number------"
#Would you like to know if a string is made of only whole numbers?

s="123"
p s.match?(/\A-?\d+\Z/)
# true
s1="123bb"
p s1.match?(/\A-?\d+\Z/)
# false
=begin
“From the start of the string (\A) check if there is an optional dash (-?, for negative numbers),
 then make sure there are some numbers in there (\d+) & nothing else until the end of the string (\Z).”
=end

puts "---------How to Append Characters----"
=begin
You can build up a big string from smaller strings by appending characters to an existing string. 
We also call this string concatenation.

Here’s how to do that using the << method:
=end
str = ""
str << "Hello"
str << " "
p str << "world" + "rails"

#Don't use += for string concatenation because that will create a new string every time, which is not good for performance!

puts "-----------------Iterate Over Characters Of a String in Ruby---------"

=begin
Sometimes it's useful to work with the individual characters of a string.

One way to do that is to use the each_char method:
=end
 # Difference betweeen p & puts & print
char_arr = "abscdel"
char_arr.each_char {
  |char|
  p "#{char}"
}

char_arr = "abscdel"
char_arr.each_char {
  |char|
  puts "#{char}"
}
char_arr = "abscdel"
char_arr.each_char {
  |char|
  print "#{char}"
}

puts "------------ chars method-------"
#You can also use the chars method to convert the string into an array of characters. Then you can use each on this array to iterate.

char_arr = "abshdknkf"
p char_arr.chars

char_arr.each_char { |a|
p a

}

puts "-------How to Convert a String to Upper or Lowercase in Ruby-----"

str = "hello team"
 p str.upcase

 str1="HELLO TEAM"
 p str1.downcase

 puts "--------How to Create Multiline Strings------"
 #You can create multi-line strings in two different ways.

=begin
We will show three ways to print multi line string.
1.String can be written within double quotes.
2.The '%' character is used and string is enclosed within '/' character.
3.In heredoc syntax, we use '<<' and string is enclosed within word STRING.
=end
puts "
A
Ab
ABC
ABCD
ABCDE"

 puts %/
        a
        ab
        abc
        abcd
        abcde/


puts <<STRING
A
AB
ABC
ABCD
STRING

 puts "----------How to Replace Text Inside a String Using The Gsub Method---"

 str = "How  many  dogs"
 p str.gsub("dogs", "cats")

 #If you want to remove the string use an empty string as the 2nd argument.

 string = "abccc"
 p string.gsub("c", "")
=begin
The gsub method returns a new string.

If you want to apply the changes to the original string you can use the gsub! method.

The gsub method also takes regular expressions as an argument so you can replace patterns instead of exact words.


=end
puts "-------This replaces all the numbers (\d+) in the string with the number 5.---"

string = "We have 3 cats"
puts string.gsub(/\d+/, "5")

#One more way to use this method, with a block:
title = "the lord of the rings"
puts title.gsub(/\w+/) { |word| word.capitalize }
# "The Lord Of The Rings"
 puts "------------ gsub vs sub---------------"
=begin
What about gsub vs sub?

Well, sub is the same as gsub, but it will only replace the first match.

Gsub replaces ALL matches.
=end
string = "We have 3 cats"
p string.sub("e","@")

string = "We have 3 cats"
p string.gsub("e","$")


puts "-----How to Remove the Last Character From a String---------"
=begin
If you are asking the user for some input (using the Kernel#gets method)
 then you will have a newline character (\n) at the end of your string, this prevents you from comparing the string directly.
=end
puts "What's your name?"
puts name = gets # "raja\n"
#The best way to remove that extra newline character (\n) is to use the chomp method.

puts "pleare enter age"
puts str=gets.chomp #chomp-method not add new line internallly

#Since Ruby 2.3 the chomp method takes an optional argument that allows you to remove the characters you want to remove.
puts "abcd@".chomp("@") #only last character remove
puts "abcd@?".chomp("b") # if last character not match, than return original string.

puts "----------Counting Characters----------"
str = "R@j@ R@thore"
p str.count("@") 
puts "---------------How to Change String Encodings----------------"
=begin
Strings are stored as a sequence of bytes, they are turned into the characters that you can see based on their encoding.

For example, the number 65 in the ASCII encoding represents the letter "A".

But there are also more complex encodings, like UTF-8, which allow you to represent characters from different languages (Chinese, etc.) & even emojis.

To find out the current encoding for a string you can use the encoding method.
=end


puts "abc".encoding #output:- Encoding:UTF-8

=begin
When reading a file from disk or downloading some data from a website you may run into encoding problems.

You can often fix that problem by enforcing the encoding.
=end

puts "abc".force_encoding("UTF-8") #output :- abc
