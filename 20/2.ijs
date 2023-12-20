0 0$1!:2&2{{
    states =. a:$~#y
    for_item. y do.
        'name type outputs' =. item
        select. type
        case. 0 do.
            states =. states item_index}~<0
        case. 1 do.
            states =. states item_index}~<(;0$~#){."1 y#~(<name)&e.@(2&{::)"1 y
        end.
    end.
    inputs =. {."1 y#~({:"1 y)e.~&><{.{.y#~(<'rx')&e.@(2&{::)"1 y
    presses =. 0$~#inputs
    count =. 0
    while. +./presses=0 do.
        count =. >:count
        queue =. ,:'broadcaster';'button';0
        while. 0<#queue do.
            'name sender pulse' =. {.queue
            queue =. }.queue
            index =. ({."1 y)i.<name
            if. index=#y do.
                continue.
            end.
            'type outputs' =. }.index{y
            select. type
            case. 0 do.
                if. -.pulse do.
                    states =. states index}~<output =. -.index{::states
                else.
                    output =. _1
                end.
            case. 1 do.
                'names flags' =. index{::states
                output =. -.*./flags =. pulse(names i.<sender)}flags
                states =. states index}~<names;flags
            case. 2 do.
                output =. pulse
            end.
            if. output >: 0 do.
                queue =. queue,outputs,"0 _ name;output
                input_index =. inputs i.<name
                if. output*.input_index<#inputs do.
                    if. 0=input_index{presses do.
                        presses =. count input_index}presses
                    end.
                end.
            end.
        end.
    end.
    *./presses
}}(((](];~[}.~2>])'%&'i.{.)@{.,[:<]<;._1@}.~3+[)~i.&' ');.(_2)(#~','&~:)1!:1<'input'
