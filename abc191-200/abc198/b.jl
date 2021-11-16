function solve()
    n = readline()
    i = length(n)
    while n[i] == '0' && i > 1
        i -= 1
    end
    n[1:i] == reverse(n[1:i]) ? "Yes" : "No"
end

println(solve())
