function f(x)
    x^2+2x+3
end

function solve()
    t = parse(Int, readline())
    f(f(f(t)+t)+f(f(t))) 
end

println(solve())
