using DataStructures

function solve()
    H, W, M = [parse(Int, x) for x in split(readline())]
    T, A, X = [zeros(Int, M) for _=1:3]
    for i=1:M
        T[i], A[i], X[i] = [parse(Int, x) for x in split(readline())]
    end

    dd = DefaultDict{Int, Int, Int}(0)
    row = Set{Int}()
    column = Set{Int}()
    for i=M:-1:1
        t, a, x = T[i], A[i], X[i]
        if t == 1 && a ∉ row
            dd[x] += W - length(column)
            push!(row, a)
        elseif t == 2 && a ∉ column
            dd[x] += H - length(row)
            push!(column, a)
        end
    end
    ans = Vector{String}()
    zero = H*W - sum(values(dd)) + dd[0]
    if zero > 0
        push!(ans, "0 $zero")
    end
    key = sort(collect(keys(dd)))
    for k in key
        if k ≠ 0 && dd[k] ≠ 0
            push!(ans, "$k $(dd[k])")
        end
    end

    println(length(ans))
    for s in ans
        println(s)
    end
end

solve()
