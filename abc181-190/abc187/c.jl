function solve()
    n = parse(Int, readline())
    d = Dict{String, Int}()
    for i=1:n
        s = readline()
        if s[1] == '!'
            s = s[2:end]
            v = -1
        else
            v = 1
        end
        if s in keys(d) && d[s] != v
            return s
        else
            d[s] = v
        end
    end
    "satisfiable"
end

println(solve())
