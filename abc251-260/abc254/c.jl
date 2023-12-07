function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    list = Vector{Vector{Int}}()
    for i=1:k
        push!(list, sort(as[i:k:n]))
    end

    for i=1:n-1
        if list[(i-1)%k+1][(i-1)÷k+1] > list[i%k+1][i÷k+1]
            return "No"
        end
    end

    "Yes"
end

println(solve())
