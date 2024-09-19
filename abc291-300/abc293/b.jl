function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    called = zeros(Bool, N)
    for i=1:N
        if !called[i]
            called[A[i]] = true
        end
    end

    ans = [i for i=1:N if !called[i]] 
    println(length(ans))
    println(join(ans, " "))
end

solve()
