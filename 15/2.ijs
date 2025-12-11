0 0$1!:2&2(256$<0 2$a:){{
    for_item. y do.
        'label power' =. item
        hash =. (256|17*+)/|.0,3 u:label
        box =. hash{::x
        bindex =. ((<label)={."1 box)i.1
        if. 1=#power do.
            if. bindex<#box do.
                x =. (<item bindex}box)hash}x
            else.
                x =. (<box,item)hash}x
            end.
        else.
            x =. (<(bindex~:i.#box)#box)hash}x
        end.
    end.
    +/(*1+i.@#)(1&{::"1+/@:*1+i.@#)&>x
}}(({.~;>:@]".@}.[){.@I.@(e.&'-='));._1',',(#~(u:10)&~:)1!:1<'input'
