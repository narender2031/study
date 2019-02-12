a = {"people":
        [
            {"name":"Adam","age":20},
            {"name":"Raj","age":30},
            {"name":"Jacob","age":25},
            {"name":"Shekar","age":31},
            {"name":"Kumar","age":27},
            {"name":"Ganesh","age":29}
        ]
    } 
sorted = a[:people].sort_by {|k| k[:age]}
@a = 4
puts sorted