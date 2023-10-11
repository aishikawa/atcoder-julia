using DataStructures

function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    strings = Vector{Set{Char}}()
    for i=1:n
        push!(strings, Set(readline()))
    end

    ret = 0

    for i=1:2^n-1
        dd = DefaultDict{Char, Int, Int}(0)
        for j=1:n
            if i >> (j-1) & 1 == 1
                for s in strings[j]
                    dd[s] += 1
                end
            end
        end
        ret = max(ret, length([c for (c, v) in dd if v == k]))
    end

    ret
end

println(solve())
