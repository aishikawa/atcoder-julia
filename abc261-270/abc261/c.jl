using DataStructures

function solve()
    n = parse(Int, readline())
    count = DefaultDict(0)
    for _=1:n
        s = readline()
        if s ∈ keys(count)
            println("$(s)($(count[s]))")
        else
            println(s)
        end
        count[s] += 1
    end
end

solve()
