0 0$1!:2&2{{
    result =. 0
    stack =. ,:y;1;1
    while. 0<#stack do.
        'board row col' =. {:stack
        stack =. }:stack
        next =. 'O'(<row,col)}board
        select. board{~<row,col
        case. 'F' do.
            result =. result>.+/,'O'=board
        case. '>' do.
            stack =. stack,next;row;>:col
        case. '^' do.
            stack =. stack,next;col;~<:row
        case. '<' do.
            stack =. stack,next;row;<:col
        case. 'v' do.
            stack =. stack,next;col;~>:row
        case. do.
            if. -.'#O<'e.~board{~<row,>:col do.
                stack =. stack,next;row;>:col
            end.
            if. -.'#Ov'e.~board{~<col,~<:row do.
                stack =. stack,next;col;~<:row
            end.
            if. -.'#O>'e.~board{~<row,<:col do.
                stack =. stack,next;row;<:col
            end.
            if. -.'#O^'e.~board{~<col,~>:row do.
                stack =. stack,next;col;~>:row
            end.
        end.
    end.
    <:result
}}'F',~'#',];.(_2)1!:1<'input'
