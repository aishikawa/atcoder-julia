function is_ideal(X::Vector{Vector{Char}}, tmp::Matrix{Char}, H::Int, W::Int)
    for i=1:28, j=1:28
        if 10 ≤ i < 10+H && 10 ≤ j < 10+W
            if tmp[i, j] ≠ X[i-9][j-9]
                return false
            end
        else
            if tmp[i, j] == '#'
                return false
            end
        end
    end
    true
end

function solve()
    HA, WA = [parse(Int, x) for x in split(readline())]
    A = [collect(readline()) for _=1:HA]
    HB, WB = [parse(Int, x) for x in split(readline())]
    B = [collect(readline()) for _=1:HB]
    HX, WX = [parse(Int, x) for x in split(readline())]
    X = [collect(readline()) for _=1:HX]

    for ai=1:19, aj=1:19, bi=1:19, bj=1:19
        tmp = fill('.', 28, 28)
    	for i=1:HA, j=1:WA
            if A[i][j]=='#'
                tmp[ai+i-1, aj+j-1]='#';
            end
        end
        for i=1:HB, j=1:WB
            if B[i][j]=='#'
                tmp[bi+i-1, bj+j-1]='#';
            end
        end
        if is_ideal(X, tmp, HX, WX)
            return "Yes"
        end
    end
    "No"
end

println(solve())
