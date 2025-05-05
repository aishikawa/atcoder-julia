using DataStructures

function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    rows = [DefaultDict{Char, Int}(0) for _=1:H]
    cols = [DefaultDict{Char, Int}(0) for _=1:W]
    for i=1:H
        l = collect(readline())
        for j=1:W
            c = l[j]
            rows[i][c] += 1
            cols[j][c] += 1
        end
    end

    while true
        delete_row = [i for i=1:H if length(rows[i]) == 1 && first(values(rows[i])) ≠ 1]
        delete_col = [i for i=1:W if length(cols[i]) == 1 && first(values(cols[i])) ≠ 1]
        if isempty(delete_row) && isempty(delete_col)
            break
        end
        for i in delete_row
            color = first(keys(rows[i]))
            delete!(rows[i], color)
            for col in cols
                if color ∈ keys(col)
                    if col[color] == 1
                        delete!(col, color)
                    else
                        col[color] -= 1
                    end
                end
            end
        end
        for i in delete_col
            if isempty(keys(cols[i]))
                continue
            end
            color = first(keys(cols[i]))
            delete!(cols[i], color)
            for row in rows
                if color ∈ keys(row)
                    if row[color] == 1
                        delete!(row, color)
                    else
                        row[color] -= 1
                    end
                end
            end
        end
    end

    ans = 0
    for row in rows
        ans += sum(values(row))
    end
    ans
end

println(solve())
