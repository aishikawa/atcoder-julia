using DataStructures

function solve()
    n, k  = [parse(Int, x) for x in split(readline())]
    cs = [parse(Int, x) for x in split(readline())]

    colors = DefaultDict{Int, Int, Int}(0)
    numcolor = 0
    for i=1:k
        if colors[cs[i]] == 0
            numcolor += 1
        end
        colors[cs[i]] += 1
    end
    ret = numcolor

    for l=2:n-k+1
        r = l+k-1
        colors[cs[l-1]] -= 1
        if colors[cs[l-1]] == 0
            numcolor -= 1
        end
        if colors[cs[r]] == 0
            numcolor += 1
        end
        colors[cs[r]] += 1
        ret = max(ret, numcolor)
    end
    ret
end

println(solve())
