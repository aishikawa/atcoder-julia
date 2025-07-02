function solve()
    K = parse(Int, readline())
    v = Vector{Int}()
    for i=1:2^10-1
        a = ""
        for k=9:-1:0
            if i >> k & 1 ≠ 0
                a = a * string(k)
            end
        end
        push!(v, parse(Int, a))
    end
    sort!(v)
    v[K+1]
end

println(solve())
