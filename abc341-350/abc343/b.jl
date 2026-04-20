function solve()
    N = parse(Int, readline())
    for _=1:N
        ans = []
        A = [parse(Int, x) for x in split(readline())]
        for i=1:N
            if A[i] == 1
                append!(ans, i)
            end
        end
        println(join(ans, " "))
    end
end

solve()
