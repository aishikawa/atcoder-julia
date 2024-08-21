function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    M = parse(Int, readline())
    B = Set([parse(Int, x) for x in split(readline())])
    X = parse(Int, readline())

    ans = zeros(Bool, X)
    for a in A
        if a ≤ X && a ∉ B
            ans[a] = true
        end
    end

    for i=1:X-1
        if ans[i] && i ∉ B
            for a in A
                if i+a ≤ X
                    ans[i+a] = true
                else
                    break
                end
            end
        end
    end

    ans[X] ? "Yes" : "No"
end

println(solve())
