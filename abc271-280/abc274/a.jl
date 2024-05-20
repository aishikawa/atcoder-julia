using Printf

function solve()
    A, B = [parse(Int, x) for x in split(readline())]
    @sprintf("%.3f", B/A)
end

println(solve())
