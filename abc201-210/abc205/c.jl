function f(a, b)
    if a < b
        "<"
    elseif a == b
        "="
    else
        ">"
    end
end

function solve()
    a, b, c = [parse(Int, x) for x in split(readline())]
    if a ≥ 0 && b ≥ 0
        f(a, b)
    elseif a ≥ 0 && b < 0
        if c % 2 == 0
            f(a, -b)
        else
            ">"
        end
    elseif a < 0 && b ≥ 0
        if c % 2 == 0
            f(-a, b)
        else
            "<"
        end
    else
        if c % 2 == 0
            f(-a, -b)
        else
            f(a, b)
        end
    end
end

println(solve())
