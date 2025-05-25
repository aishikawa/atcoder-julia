function solve()
    N = parse(Int, readline())
    edges = zeros(Int, N, N)
    for i=1:N-1
        D = [parse(Int, x) for x in split(readline())]
        edges[i, i+1:end] = D
        edges[i+1:end, i] = D
    end
    
    unmatched = ones(Bool, N)
    function max_matching()
        ret = 0
        a = findfirst(unmatched)
        if isnothing(a)
            return 0
        end
        for b=a+1:N
            if unmatched[b]
                unmatched[a] = unmatched[b] = false
                t = edges[a, b] + max_matching()
                ret = max(ret, t)
                unmatched[a] = unmatched[b] = true
            end
        end
        ret
    end

    if N % 2 == 0
        ans = max_matching()
    else
        ans = 0
        for i=1:N
            unmatched[i] = false
            ans = max(ans, max_matching())
            unmatched[i] = true
        end
    end

    ans
end

println(solve())
