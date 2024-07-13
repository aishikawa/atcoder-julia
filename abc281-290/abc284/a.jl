function solve()
    N = parse(Int, readline())
    S = Vector{String}()
    for _=1:N
        push!(S, readline())
    end

    for i=N:-1:1
        println(S[i])
    end
end

solve()
