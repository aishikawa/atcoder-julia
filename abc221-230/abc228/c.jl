function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    scores = zeros(Int, n)
    for i=1:n
        scores[i] = sum([parse(Int, x) for x in split(readline())])
    end
    sorted_scores = sort(scores, rev=true)
    kth_score = sorted_scores[k]

    for i=1:n
        if scores[i] + 300 ≥ kth_score
            println("Yes")
        else
            println("No")
        end
    end
end

solve()
