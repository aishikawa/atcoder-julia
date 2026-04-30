using DataStructures

function solve()
    N, T = [parse(Int, x) for x in split(readline())]
    scores = zeros(Int, N)
    dict = DefaultDict(0, 0 => N)
    for _=1:T
        A, B = [parse(Int, x) for x in split(readline())]
        dict[scores[A]] -= 1
        if dict[scores[A]] == 0
            delete!(dict, scores[A])
        end
        scores[A] += B
        dict[scores[A]] += 1
        println(length(keys(dict)))
    end
end

solve()
