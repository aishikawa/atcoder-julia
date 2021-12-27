function combination(n::Int, k::Int)::Int
    factorial(big(n)) / (factorial(big(k)) * factorial(big(n - k)))
end

function solve(a::Int, b::Int, k::Int)::String
    if a == 0
        foldl(*, ["b" for _=1:b])
    elseif b == 0
        foldl(*, ["a" for _=1:a])
    else
        n = combination(a+b-1, b)
        if k > n
            "b" * solve(a, b-1, k-n)
        else
            "a" * solve(a-1, b, k)
        end
    end
end

function solve()
    a, b, k = [parse(Int, x) for x in split(readline())]
    solve(a, b, k)
end

println(solve())
