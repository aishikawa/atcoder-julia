function solve()
    a, b, c, d = [parse(Int, x) for x in split(readline())]
    ans = (a+b)*(c-d)
    println(ans)
    println("Takahashi")
end

solve()
