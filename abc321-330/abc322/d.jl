function canput(exist::Array{Int, 2}, p::Array{Char, 2}, di::Int, dj::Int)
    for i=1:4, j=1:4
        if p[i, j] == '#'
            ni = i + di
            nj = j + dj
            if !(1 ≤ ni ≤ 4 && 1 ≤ nj ≤ 4)
                return false
            end
            if exist[ni, nj] == 1
                return false
            end
            exist[ni, nj] = 1
        end
    end
    true
end

function dfs(d::Int, exist::Array{Int, 2}, P::Array{Char, 3})
    if d == 3
        ok = true
        for i=1:4, j=1:4
            ok = ok && exist[i, j] == 1
        end
        if ok
            println("Yes")
            exit()
        end
        return
    end

    for di = -3:3, dj = -3:3
        ex2 = deepcopy(exist)
        c = canput(ex2, P[d+1, :, :], di, dj)
        if c
            dfs(d+1, ex2, P)
        end
    end
end


function solve()
    P = Array{Char}(undef, 3, 4, 4)
    for i=1:3
        for j=1:4
            P[i, j, :] = collect(readline())
        end
    end

    for i=1:4
        for j=1:4
            dfs(0, zeros(Int, 4, 4), P)
            P[3, :, :] = rotr90(P[3, :, :])
        end
        P[2, :, :] = rotr90(P[2, :, :])
    end
    println("No")
end

solve()
