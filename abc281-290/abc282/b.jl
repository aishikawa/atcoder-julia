function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    S = Vector{String}()
    for _=1:N
        push!(S, readline())
    end

    ans = 0
    for i=1:N, j=i+1:N
        v = true
        for k=1:M
            if S[i][k] == 'x' && S[j][k] == 'x'
                v = false
                break
            end
        end
        if v
            ans += 1
        end
    end
    ans
end

println(solve())
