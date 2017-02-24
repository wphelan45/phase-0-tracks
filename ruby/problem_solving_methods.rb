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

def fib_array(n)
  array = [0, 1]
  counter = 0
  while counter < (n - 2)
    array.push(array[0 + counter] + array[1 + counter])
    counter += 1
  end
  array
end
fib_array(6)
fib_array(100)[-1] == 218922995834555169026