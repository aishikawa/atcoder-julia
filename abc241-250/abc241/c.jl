function solve()
    n = parse(Int, readline())
    ss = Vector{String}()
    for _=1:n
        push!(ss, readline())
    end

    hs = zeros(Int, n, n)
    vs = zeros(Int, n, n)
    d1 = zeros(Int, n, n)
    d2 = zeros(Int, n, n)

    for i=1:n, j=1:n
        x = ss[i][j] == '#' ? 1 : 0
        if j == 1
            hs[i, j] = x
        end
        if i == 1
            vs[i, j] = x
            d1[i, j] = x
            d2[i, j] = x
        end
        if j > 1
            hs[i, j] = hs[i, j-1] + x
        end
        if i > 1
            vs[i, j] = vs[i-1, j] + x
        end
        if i > 1 && j > 1
            d1[i, j] = d1[i-1, j-1] + x
        end
        if i > 1 && j < n
            d2[i, j] = d2[i-1, j+1] + x
        end

        if j > 6 && ss[i][j-6] == '#'
            hs[i, j] -= 1
        end
        if i > 6 && ss[i-6][j] == '#'
            vs[i, j] -= 1
        end
        if i > 6 && j > 6 && ss[i-6][j-6] == '#'
            d1[i, j] -= 1
        end
        if i > 6 && j+6 ≤ n && ss[i-6][j+6] == '#'
            d2[i, j] -= 1
        end
        if hs[i, j] ≥ 4 || vs[i, j] ≥ 4 || d1[i, j] ≥ 4 && abs(i-j) ≤ n-6 || d2[i, j] ≥ 4 && abs(i-j) ≥ 5
            return "Yes"
        end
    end
    "No"
end

println(solve())
