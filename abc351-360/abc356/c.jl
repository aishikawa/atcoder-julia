function solve()
    N, M, K = parse.(Int, split(readline()))
    C = Vector{Int}(undef, M)
    A = Vector{Vector{Int}}(undef, M)
    R = Vector{String}(undef, M)
    for i=1:M
        L = split(readline())
        C[i] = parse(Int, L[1])
        A[i] = parse.(Int, L[2:end-1])
        R[i] = L[end]
    end
    
    ans = 0
    for x=0:2^N-1
        t = true
        for i=1:M
            k = 0
            for a in A[i]
                if (x >> (a-1)) & 1 == 1
                    k += 1
                end
            end
            if k ≥ K && R[i] == "x" || k < K && R[i] == "o"
                t = false
                break
            end
        end
        if t
            ans += 1
        end
    end
    ans
end

println(solve())
