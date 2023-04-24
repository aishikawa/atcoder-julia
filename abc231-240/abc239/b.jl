function solve()
    xstr = readline()
    if length(xstr) == 1
        0
    elseif  xstr[1] == '-' && length(xstr) == 2
        -1
    else
        x = parse(Int, xstr[1:end-1])
        if xstr[end] == '0' || x ≥ 0
            x
        else
            x-1
        end
    end
end

println(solve())
