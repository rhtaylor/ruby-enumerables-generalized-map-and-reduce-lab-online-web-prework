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

     value = yield(value, y[i])
     i += 1
     z += x
     value

   elsif y[i]
     answer = true
     count += 1
     i += 1
     answer
   elsif !y[i] && !y[i - 1]
     count -= 1
     answer = false
     i += 1
  else
    answer = false
    i += 1
   end

end
count > 0 ? answer : (count < 0) ? answer : value
end
