function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = Set([parse(Int, x) for x in split(readline())])

    maxa = -1
    maxargs = Set{Int}() 
    for i=1:n
        if as[i] > maxa
            maxa = as[i]
            maxargs = Set(i)
        elseif as[i] == maxa
            push!(maxargs, i)
        end
    end

    isempty(maxargs ∩ bs)  ? "No" : "Yes"
end

println(solve())
