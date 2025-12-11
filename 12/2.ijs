0 0$1!:2&2+/(i.&' '((0,~5}.@,@$2,:@,'.#?'&i.)@{.{{
    counts =. 0$0
    count =. 0
    memory =. ((>:#x),(>:#y),>:>./y)$_1
    stack =. ,:0,({.x),0,({.y)
    while. 0<#stack do.
        'ix fx iy fy' =. {:stack
        stack =. }:stack
        if. fx<0 do.
            memory =. count(<ix,iy,fy)}memory
            count =. count+{:counts
            counts =. }:counts
        elseif. ix=#x do.
            count =. count+iy=#y
        elseif. iy=#y do.
            if. fx~:1 do.
                ix =. >:ix
                fx =. ix{ ::0 x
                stack =. stack,ix,fx,iy,fy
            end.
        elseif. fx=0 do.
            if. fy=0 do.
                iy =. >:iy
                fy =. iy{ ::0 y
            end.
            while. (fx=0)*.ix<#x do.
                ix =. >:ix
                fx =. ix{ ::0 x
            end.
            stack =. stack,ix,fx,iy,fy
        elseif. fx=1 do.
            if. fy>0 do.
                while. (fx~:0)*.fy>0 do.
                    ix =. >:ix
                    fx =. ix{ ::0 x
                    fy =. <:fy
                end.
                if. fy=0 do.
                    stack =. stack,ix,fx,iy,fy
                end.
            end.
        else.
            memoized =. (<ix,iy,fy){memory
            if. memoized>:0 do.
                count =. count+memoized
            else.
                counts =. counts,count
                count =. 0
                stack =. stack,(ix,_1,iy,fy),(ix,0,iy,fy),:ix,1,iy,fy
            end.
        end.
    end.
    count
}}[:(5,@$[:,:[:".;._1','&,)]}.~1+[)]);.(_2)1!:1<'input'
