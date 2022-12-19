function solve()
    a, b = [reverse(x) for x in split(readline())]
    n = min(length(a), length(b))
    ret = "Easy"
    for i=1:n
        if parse(Int, a[i]) + parse(Int, b[i]) > 9
            ret = "Hard"
        end
    end
    ret
end

println(solve())
