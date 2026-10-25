function solve()
    N, M = parse.(Int, split(readline()))
    S = fill(0, (N, M))
    for i=1:N
        s = collect(readline())
        S[i, :] = [c == 'x' ? 0 : 1 for c in s]
    end

    ans = N
    for i=1:(1<<N)-1
        c = count_ones(i)  
        if c ≥ ans
            continue
        end

        s = zeros(Int, M)
        for b=0:N-1
            if (i >> b) & 1 == 1
                s += S[b+1, :]
            end
        end
        if all(x-> x > 0, s)
            ans = c
        end
    end
    ans
end

println(solve())
