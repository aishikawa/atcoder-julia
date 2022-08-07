function solve()
    ss = Vector{String}()
    for _=1:3
        push!(ss, readline())
    end
    t = readline()
    for tt in t
        i = parse(Int, tt)
        print(ss[i])
    end
    println()
end

solve()
