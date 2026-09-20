function solve()
    N = parse(Int, readline())
    L = zeros(Int, N)
    R = zeros(Int, N)
    for i=1:N
        (L[i], R[i]) = parse.(Int, split(readline()))
    end
    sort!(L)
    sort!(R)
    ans = 0
    c = 0
    while !isempty(L)
        if L[1] < R[1]
            popfirst!(L)
            ans += c
            c += 1
        elseif L[1] == R[1]
            popfirst!(L)
            popfirst!(R)
            ans += c
        else
            popfirst!(R)
            c -= 1
        end
    end
    ans
end

println(solve())
