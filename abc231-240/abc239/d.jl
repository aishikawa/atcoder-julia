using Primes

function solve()
    a, b, c, d = [parse(Int, x) for x in split(readline())]
    ps = primes(a+c, b+d)
    ps = vcat([a+c-1], ps, [b+d+1])
    maximum(ps[2:end] - ps[1:end-1]) > d - c + 1 ? "Takahashi" : "Aoki"
end

println(solve())
