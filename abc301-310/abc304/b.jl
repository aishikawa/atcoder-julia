function solve()
    N = collect(readline())
    N[4:end] .= '0'
    String(N)
end

println(solve())
