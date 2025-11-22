function solve()
    S = collect(readline())
    S[end] = '4'
    String(S)
end

println(solve())
