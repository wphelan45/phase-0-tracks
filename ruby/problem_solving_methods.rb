#Create an Array
array = [50, 60, 70, 80]
#Define a method that calls array and an integer
def search_array(array, n)
#Create an if else to return the indexed value of the array Ex 50 returns 0
counter = 0
while counter < array.length
  if array[(array.length + counter) - array.length] == n
    puts (array.length + counter) - array.length
  else 
    puts nil
  end
  counter += 1
end
end
search_array(array, 90)
