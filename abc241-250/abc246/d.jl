function f(a, b)
    a^3 + a^2*b + a*b^2 + b^3
end

function solve()
    n = parse(Int, readline())
    b = 10^6
    x = 10^18
    for a=0:10^6
        while b ≥ 0 && f(a, b) ≥ n
            x = min(x, f(a, b))
            b -= 1
        end
    end
    x
end

println(solve())
