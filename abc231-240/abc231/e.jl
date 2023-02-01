memo = Dict{Tuple{Int, Int}, Int}()

function recur(n::Int, x::Int, as::Vector{Int}, i::Int)::Int
    ret = if x == 0
        0
    elseif (x, i) in keys(memo)
        memo[(x, i)]
    elseif  i == n
        (x-1) ÷ as[i] + 1
    else
        y = x % as[i+1]        
        min(y÷as[i] + recur(n, x-y, as, i+1), (as[i+1]-y)÷as[i] + recur(n, as[i+1]-y+x, as, i+1))
    end
    memo[(x, i)] = ret
    ret
end

function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    recur(n, x, as, 1)
end

println(solve())
