function isvalid(sx::Int, sy::Int, T::Vector{Char}, S::Matrix{Char})
    x, y = sx, sy
    for t in T
        if S[y, x] == '#'
            return false
        end
        if t == 'L'
            x -= 1
        elseif t == 'R'
            x += 1
        elseif t == 'U'
            y -= 1
        elseif t == 'D'
            y += 1
        end
    end

    S[y, x] == '.'
end

function solve()
    H, W, N = [parse(Int, x) for x in split(readline())]
    T = collect(readline())
    S = fill('.', (H, W))
    for i=1:H
        S[i, :] = collect(readline())
    end

    ans = 0
    for y=2:H-1, x=2:W-1
        if isvalid(x, y, T, S)
            ans += 1
        end
    end
    ans
end

println(solve())
