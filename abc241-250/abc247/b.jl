using DataStructures

function solve()
    n = parse(Int, readline())
    names = [[""] for _=1:n]
    acc = Accumulator{String, Int}()
    for i=1:n
        names[i] = split(readline())
        inc!(acc, names[i][1])
        inc!(acc, names[i][2])
    end

    for i=1:n
        dec!(acc, names[i][1])
        dec!(acc, names[i][2])

        if acc[names[i][1]] > 0 && acc[names[i][2]] > 0
            return "No"
        end

        inc!(acc, names[i][1])
        inc!(acc, names[i][2])
    end

    "Yes"
end

println(solve())
