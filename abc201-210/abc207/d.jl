function center(n, s)
    sum(s, dims=1) ./ n
end

function solve()
    n = parse(Int, readline())
    s = zeros(Int, (n, 2))
    t = zeros(Int, (n, 2))
    for i=1:n
        s[i, :] = [parse(Int, x) for x in split(readline())] * n
    end
    for i=1:n
        t[i, :]=[parse(Int, x) for x in split(readline())] * n
    end
    s_center = center(n, s)
    t_center = center(n, t)
        
    s = s .- s_center
    t = t .- t_center

    eps = 1e-6

    if n > 1 && s[1, :] == [0; 0]
        s[1,:], s[2,:] = s[2,:], s[1,:]
    end

    for i=1:n
        flag = true
        angle = atan(t[i, 2], t[i, 1]) - atan(s[1, 2], s[1, 1])
        for j=1:n
            a = s[j, 1] * cos(angle) - s[j, 2] * sin(angle)
            b = s[j, 1] * sin(angle) + s[j, 2] * cos(angle)
            flag2 = false
            for k=1:n
                if abs(a-t[k, 1]) ≤ eps && abs(b-t[k, 2]) ≤ eps
                    flag2 = true
                    break
                end
            end
            flag &= flag2
        end
        if flag
            return "Yes"
        end
    end
    "No"
end

println(solve())
