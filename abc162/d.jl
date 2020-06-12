function countRGB(s)
    numR = numG = numB = 0
    for c in s
        if c == 'R'
            numR += 1
        elseif c == 'G'
            numG += 1
        elseif c == 'B'
            numB += 1
        end
    end
    (numR, numG, numB)
end

function numequaldistance(s)
    ret = 0
    for i = 1:length(s)-2
        for d = 1:(length(s)-i)÷2
            j = i+d
            k = j+d
            if s[i] != s[j] && s[j] != s[k] && s[k] != s[i]
                ret += 1
            end
        end
    end
    ret
end

function solve()
    readline()
    s = readline()
    numR, numG, numB = countRGB(s)
    ned = numequaldistance(s)
    numR*numG*numB - ned
end

println(solve())
