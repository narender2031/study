array = [
    ["happy", 1], ["sad", 2], ["mad", 1], ["bad", 3], ["glad", 12]
]

sort = array.sort { |a,b| b[1]<=>a[1] }
puts sort