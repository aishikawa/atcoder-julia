function solve()
    n = readline()
    s = readline()

    f = findfirst('1', s)
    f % 2 == 1 ? "Takahashi" : "Aoki"
end

println(solve())
