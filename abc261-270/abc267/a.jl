function solve()
    days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    s = readline()
    6 - findfirst(x -> x == s, days)
end

println(solve())
