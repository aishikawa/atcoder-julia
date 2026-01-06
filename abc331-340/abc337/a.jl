function solve()
    N = parse(Int, readline())
    score = zeros(Int, 2)
    for _=1:N
        score .+= [parse(Int, x) for x in split(readline())]
    end

    if score[1] > score[2]
        "Takahashi"
    elseif score[1] == score[2]
        "Draw"
    else score[1] < score[2]
        "Aoki"
    end
end

println(solve())
