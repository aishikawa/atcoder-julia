function solve()
    s = readline()
    if s[1:2:end] == lowercase(s[1:2:end]) && s[2:2:end] == uppercase(s[2:2:end])
        "Yes"
    else
        "No"
    end
end

println(solve())