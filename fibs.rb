def fibs(num)
  array = []
  var = 0
  index = 0
   num.times do 
    if var == 0
      array.push(var)
      var += 1
      index += 1
    else
      array.push(var)
      var += array[index-1]
      index += 1
    end
  end
  array
end

def fibs_rec(n, array = [0, 1])
  return array[0] if n == 1
  return array if n == 2
  array = fibs_rec(n-1)
  array.push(array[-1] + array[-2])
end


fibs_rec(10)
