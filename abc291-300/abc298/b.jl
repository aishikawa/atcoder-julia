function check(A::Matrix{Int}, B::Matrix{Int})::Bool
    all(A - B .≤ 0)
end

function solve()
    N = parse(Int, readline())
    A = zeros(Int, N, N)
    B = zeros(Int, N, N)
    for i=1:N
        A[i, :] = [parse(Int, x) for x in split(readline())]
    end
    for i=1:N
        B[i, :] = [parse(Int, x) for x in split(readline())]
    end

    i = 0
    ans = check(A, B)
    while i≤2 && !ans
        A = rotr90(A)
        ans = check(A, B)
        i += 1
    end

    ans ? "Yes" : "No"
end

println(solve())
