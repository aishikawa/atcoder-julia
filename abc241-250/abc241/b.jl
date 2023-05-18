function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]
    pastas = Dict{Int, Int}()
    for a in as
        if a ∈ keys(pastas)
            pastas[a] += 1
        else
            pastas[a] = 1
        end
    end
    for b in bs
        if b ∉ keys(pastas) || pastas[b] < 1
            return "No"
        else
            pastas[b] -= 1
        end
    end
    "Yes"
end

println(solve())
