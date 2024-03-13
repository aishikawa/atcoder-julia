using Combinatorics

function solve()
    h1, w1 = [parse(Int, x) for x in split(readline())]
    as = zeros(Int, (h1, w1))
    for i=1:h1
        as[i, :] = [parse(Int, x) for x in split(readline())]
    end    

    h2, w2 = [parse(Int, x) for x in split(readline())]
    bs = zeros(Int, (h2, w2))
    for i=1:h2
        bs[i, :] = [parse(Int, x) for x in split(readline())]
    end

    h_iter = combinations(1:h1, h2)
    w_iter = combinations(1:w1, w2)

    for h in h_iter, w in w_iter
        if as[h,w] == bs
            return "Yes"
        end
    end
    "No"
end

println(solve())
