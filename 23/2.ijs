0 0$1!:2&2{{
    nodes =. (>,{<@i."0$y){~I.,-.0 2 e.~y
    connections =. (#nodes)$<0$0
    distances =. 0$~,~#nodes
    for_node. nodes do.
        'row col' =. node
        y =. 0(<node)}y
        for_position. (row,>:col),(col,~<:row),(row,<:col),:col,~>:row do.
            'row col' =. position
            count =. 1
            while. 2=y{~<row,col do.
                y =. 0(<row,col)}y
                directions =. (row,>:col);(col,~<:row);(row,<:col);col,~>:row
                'row col' =. >{.directions#~0<directions{y
                count =. >:count
            end.
            if. 0<y{~<row,col do.
                i =. node_index
                j =. nodes i.row,col
                connections =. connections i}~<j,~i{::connections
                connections =. connections j}~<i,~j{::connections
                distances =. count(<i,j)}distances
                distances =. count(<j,i)}distances
            end.
        end.
    end.
    stack =. ,:0;0;1$~#nodes
    result =. 0
    while. 0<#stack do.
        'index count allowed' =. {:stack
        if. index=<:#nodes do.
            result =. result>.count
        end.
        stack =. }:stack
        for_next. index{::connections do.
            if. next{allowed do.
                stack =. stack,next;(count+next{index{distances);0 index}allowed
            end.
        end.
    end.
    result
}}(*[:+/(,/_1 1*/e.i.2)&|.)0,~0,'#'&~:;.(_2)1!:1<'input'
