import Primes: primes

function solve()
    n = parse(Int, readline())

    m = floor(Int, sqrt(n))

    s = Set{Int}()
    for a=2:m
        for b=2:n
            x = a^b
            if x > n
                break
            end
            push!(s, x)
        end
    end

    n - length(s)
end

println(solve())
