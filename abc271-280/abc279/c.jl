using DataStructures

function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    S = fill('.', (H, W))
    for i=1:H
        S[i, :] = collect(readline())
    end
    sdict = DefaultDict{String, Int}(0)
    for j=1:W
        sdict[String(S[:, j])] += 1
    end

    T = fill('.', (H, W))
    for i=1:H
        T[i, :] = collect(readline())
    end
    tdict = DefaultDict{String, Int}(0)
    for j=1:W
        tdict[String(T[:, j])] += 1
    end

    sdict == tdict ? "Yes" : "No"
end

println(solve())
