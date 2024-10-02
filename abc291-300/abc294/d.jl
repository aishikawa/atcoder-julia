function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    q = 1

    came = zeros(Bool, N)
    ans = Vector{Int}()
    
    for _=1:Q
        l = readline()
        if startswith(l, "2")
            x = parse(Int, split(l)[2])
            came[x] = true
            while q ≤ N && came[q]
                q += 1
            end
        elseif startswith(l, "3")
            push!(ans, q)
        end
    end

    for a in ans
        println(a)
    end
end

solve()
