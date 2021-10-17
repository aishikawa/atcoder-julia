line = readline()
x, y, z = [parse(Int, x) for x in split(line)]
println("$z $x $y")
