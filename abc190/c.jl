function read_integers()
    [parse(Int, x) for x in split(readline())]
end

function read_instance()
    n, m = read_integers()
    conditions = []
    for i=1:m
        push!(conditions, read_integers())
    end
    k = read_integers()[1]
    choices = []
    for i=1:k
        push!(choices, read_integers())
    end
    n, m, conditions, k, choices
end

function put_ball(choices, x, n, k)
    balls = zeros(Int, n)
    for i=0:k-1
        if x >> i & 1 == 1
            balls[choices[i+1][1]] += 1
        else
            balls[choices[i+1][2]] += 1
        end
    end
    balls
end

function num_satisfied(conditions, balls)
    ret = 0
    for cond in conditions
        if balls[cond[1]] ≥ 1 && balls[cond[2]] ≥ 1
            ret += 1
        end
    end
    ret
end

function solve()
    n, m, conditions, k, choices = read_instance()
    ret = 0
    for x=0:2^k
        balls = put_ball(choices, x, n, k)
        ret = max(ret, num_satisfied(conditions, balls))
    end
    ret
end

println(solve())
