function solve()
    n = parse(Int, readline())
    coord = zeros(Int, n, 2)
    for i=1:n
        coord[i, :] = [parse(Int, x) for x in split(readline())]
    end
    s = readline()

    dic = Dict{Int, Vector{Int}}()
    for i=1:n
        x, y = coord[i, :]
        if s[i] == 'L'
            if y ∉ keys(dic)
                dic[y] = [x, 10^10]
            else
                maxx = max(dic[y][1], x) 
                dic[y] = [maxx, dic[y][2]]
            end
        else
            if y ∉ keys(dic)
                dic[y] = [-1, x]
            else
                minx = min(dic[y][2], x) 
                dic[y] = [dic[y][1], minx]
            end
        end
        if dic[y][1] > dic[y][2]
            return "Yes"
        end
    end
    "No"
end

println(solve())
