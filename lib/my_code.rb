def map(y)
  i = 0
  new_array = []
  while i < y.length do
    a = yield(y[i])
    new_array.push(a)
    i += 1
  end
new_array
end

def reduce(y, n=0)
  i = 0
  answer = true
  value = n
  count = 0
  x = 0
  z = 0
  y.length.times do
  if y[i] && (y[i].is_a? Integer)

     x += yield(y[i], value)
     i += 1
     z += x
     z

   elsif y[i]
     answer = true
     count += 1
     i += 1
     answer
   else
     answer = false
     i += 1


   end

end
count > 0 ? true : x
end
