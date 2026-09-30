function solve()
    N, M = parse.(Int, split(readline()))
    H = parse.(Int, split(readline()))

    for i=1:N
        M = M - H[i]
        if M < 0
            return i-1
        end
    end
    N
end

println(solve())
