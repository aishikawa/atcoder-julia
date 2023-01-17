function solve()
    n, a, b = [parse(Int, x) for x in split(readline())]
    p, q, r, s = [parse(Int, x) for x in split(readline())]
    for i=p:q
        for j=r:s
            if abs(i-a) == abs(j-b)
                print("#")
            else
                print(".")
            end
        end
        println()
    end
end

solve()
