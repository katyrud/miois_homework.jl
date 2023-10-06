export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
        if a == 0
        return [0]  # Возвращаем массив с одним элементом - 0
    end
   B = Int[]  # Создаем пустой массив для хранения цифр
    while a != 0
        c = mod(a, 10)  # Получаем последнюю цифру числа a с помощью оператора остатка
        push!(B, c)  # Добавляем цифру в массив
        a = div(a, 10)  # Убираем последнюю цифру числа a с помощью целочисленного деления
    end
    return B  # Возвращаем массив цифр
        end

function touppercase(str_)
    result = ""
    for symb in str_
        if 'a' <= symb <= 'z'  # Проверяем, является ли символ строчной буквой
            symb = Char(Int(symb) - 32)  # Преобразуем символ в верхний регистр
        end
        result *= symb
    end
    return result
end

function firstnorm(vec_::AbstractVector{<:Number})
    n1=0
    for n in vec_
        n1 += abs(n)
    end
    return n1;
    
end

function secondnorm(vec_::AbstractVector{<:Number})
    n2=0
    for n in vec_
        n2 += n^2
    end
    return sqrt(n2);
end

function infnorm(vec_::AbstractVector{<:Number})
    n3=0
    for n in vec_
        if n > n3 
            n3=n
        end
           return n3;
    end
end

function firstnorm(vec_::AbstractMatrix{<:Number})
            a = zero(eltype(vec_))  # Норма  с  нулевым значением
    
        for n in eachcol(vec_)
            buf = sum(n)
            a = max(a, buf)
        end
    
        return a
    end

function infnorm(vec_::AbstractMatrix{<:Number})
    a = zero(eltype(vec_))  # Норма с нулевым значением

    for n in eachrow(vec_)
        buf = sum(n)
        a = max(a, buf)
    end

    return a
end


function isleap(year)
    if year % 4 == 0  # Проверяем, делится ли год на 4 без остатка
        if year % 100 == 0  # Проверяем, делится ли год на 100 без остатка
            if year % 400 == 0  # Проверяем, делится ли год на 400 без остатка
                return true
            else
                return false
            end
        else
            return true
        end
    else
      return false;
end
end

function chesscolor(cell1, cell2)
   # Определяем цвет первой клетки
   color1 = (cell1[1] - 'a' + cell1[2]) % 2 == 0
    
   # Определяем цвет второй клетки
   color2 = (cell2[1] - 'a' + cell2[2]) % 2 == 0

   return color1 == color2
end