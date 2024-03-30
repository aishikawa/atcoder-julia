function solve()
    s = readline()
    columns = zeros(Bool, 7)
    for i=1:10
        if s[i] == '1'
            if i == 7
                columns[1] = true
            elseif i == 4
                columns[2] = true
            elseif i == 2 || i == 8
                columns[3] = true
            elseif i == 1 || i == 5
                columns[4] = true
            elseif i ==3 || i == 9
                columns[5] = true
            elseif i == 6
                columns[6] = true
            elseif i == 10
                columns[7] = true
            end
        end
    end

    if s[1] == '0'
        for l = 1:5, r = l+2:7
            if columns[l] && columns[r] && all([!x for x in columns[l+1:r-1]])
                return "Yes"
            end
        end
    end
    "No"
end

println(solve())
