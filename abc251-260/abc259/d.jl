using DataStructures

function isIntersect(c1, c2)
    x1, y1, r1 = c1
    x2, y2, r2 = c2

    d = (x1-x2)^2+(y1-y2)^2

    abs(r1-r2)^2 ≤ d ≤ (r1+r2)^2 ? true : false
end

function solve()
    n = parse(Int, readline())
    sx, sy, tx, ty = [parse(Int, x) for x in split(readline())]
    si = ti = 0
    circles = []
    dj = IntDisjointSets(n)

    for i=1:n
        x, y, r = [parse(Int, x) for x in split(readline())]
        if (x-sx)^2 + (y-sy)^2 == r^2
            si = i
        end
        if (x-tx)^2 + (y-ty)^2 == r^2
            ti = i
        end
        push!(circles, (x, y, r))
    end

    for i=1:n-1, j=i:n
        if isIntersect(circles[i], circles[j])
            union!(dj, i, j)
        end
    end
    in_same_set(dj, si, ti) ? "Yes" : "No"
end

println(solve())
