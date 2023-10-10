function solve()
    s = readline()
    lower = false
    upper = false
    chars = Set{Char}()
    for c in s
        if islowercase(c)
            lower = true
        end
        if isuppercase(c)
            upper = true
        end
        push!(chars, c)
    end

    lower && upper && length(chars) == length(s) ? "Yes" : "No"
end

println(solve())
