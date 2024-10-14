function solve()
    ans = ""
    for i=8:-1:1
        S = readline()
        j = findfirst('*', S)
        if !isnothing(j)
            c = 'a' + j - 1
            ans = "$c$i"
        end
    end
    ans
end

println(solve())
