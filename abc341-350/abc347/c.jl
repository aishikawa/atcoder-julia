function solve()
    N, A, B = [parse(Int, x) for x in split(readline())]
    D = [parse(Int, x) for x in split(readline())]
    D = [d % (A+B) for d in D]
    sort!(D)
    append!(D, D[1]+A+B)
    for i=1:N
        if D[i+1] - D[i] >= B+1
            return "Yes"
        end
    end

    "No"
end

println(solve())
