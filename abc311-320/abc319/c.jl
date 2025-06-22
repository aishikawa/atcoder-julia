using Combinatorics

function isfalsehope(C::Matrix{Int}, per::Vector{Int})::Bool
    t = zeros(Int, 3, 3)
    for p in per
        i = (p-1) ÷ 3 + 1
        j = (p-1) % 3 + 1
        t[i, j] = C[i, j]
        if i == 1
            if t[2, j] ≠ 0 && t[2, j] == t[3, j]
                return true
            end
        elseif i == 2
            if t[1, j] ≠ 0 && t[1, j] == t[3, j]
                return true
            end
        else
            if t[1, j] ≠ 0 && t[1, j] == t[2, j]
                return true
            end
        end
        if j == 1
            if t[i, 2] ≠ 0 && t[i, 2] == t[i, 3]
                return true
            end
        elseif j == 2
            if t[i, 1] ≠ 0 && t[i, 1] == t[i, 3]
                return true
            end
        else
            if t[i, 1] ≠ 0 && t[i, 1] == t[i, 2]
                return true
            end
        end
        if i == 1 && j == 1
            if t[2, 2] ≠ 0 && t[2, 2] == t[3, 3]
                return true
            end
        elseif i == 2 && j == 2
            if t[1, 1] ≠ 0 && t[1, 1] == t[3, 3]
                return true
            end
        elseif i == 3 && j == 3
            if t[1, 1] ≠ 0 && t[1, 1] == t[2, 2]
                return true
            end
        end
        if i == 1 && j == 3
            if t[2, 2] ≠ 0 && t[2, 2] == t[3, 1]
                return true
            end
        elseif i == 2 && j == 2
            if t[1, 3] ≠ 0 && t[1, 3] == t[3, 1]
                return true
            end
        elseif i == 3 && j == 1
            if t[1, 3] ≠ 0 && t[1, 3] == t[2, 2]
                return true
            end
        end
    end
    false
end

function solve()
    C = Matrix{Int}(undef, 3, 3)
    for i=1:3
        C[i,:] = [parse(Int, x) for x in split(readline())]
    end

    a = 0
    for per in permutations(1:9)
        if !isfalsehope(C, per)
            a += 1
        end
    end
    a / factorial(9)
end

println(solve())
