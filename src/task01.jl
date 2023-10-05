export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    if a == 0
        return [0]
    end
    B = Int[]  # Создаем пустой массив для хранения цифр
    while a != 0
        c = a % 10  # Получаем последнюю цифру числа a
        push!(B, c)  # Добавляем цифру в массив
        a = div(a, 10)  # Убираем последнюю цифру числа a
    end
    return reverse(B)  # Обратный порядок цифр в массиве для соответствия порядку в числе
end

function touppercase(str_)
    return 0;
end

function firstnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function secondnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function infnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function firstnorm(vec_::AbstractMatrix{<:Number})
    return 0;
end

function infnorm(vec_::AbstractMatrix{<:Number})
    return 0;
end

function isleap(year)
    return false;
end

function chesscolor(cell1, cell2)
    return false;
end