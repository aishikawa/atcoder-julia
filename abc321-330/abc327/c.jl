function solve()
    A = Matrix{Int}(undef, 9, 9)
    for i=1:9
        A[i, :] = [parse(Int, x) for x in split(readline())]
    end

    for i=1:9
        s = Set(A[i, :])
        if length(s) ≠ 9
            return "No"
        end
        s = Set(A[:, i])
        if length(s) ≠ 9
            return "No"
        end
    end

    for i=1:3, j=1:3        
        s = Set(A[3i-2:3i, 3j-2:3j])
        if length(s) ≠ 9
            return "No"
        end
    end
    "Yes"
end

println(solve())
