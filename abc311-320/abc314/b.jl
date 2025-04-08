function solve()
    N = parse(Int, readline())
    As = Vector{Set{Int}}(undef, N)
    for i=1:N
        C = parse(Int, readline())
        As[i] = Set([parse(Int, x) for x in split(readline())])
    end
    
    X = parse(Int, readline())
    
    len = 38
    ans = []
    for i=1:N
        if X ∈ As[i]
            la = length(As[i])
            if la < len
                ans = [i]
                len = la
            elseif la == len
                push!(ans, i)
            end
        end
    end

    println(length(ans))
    println(join(ans, " "))

end

solve()
