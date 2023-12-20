0 0$1!:2&2{{
    states =. a:$~#y
    for_item. y do.
        'name type outputs' =. item
        select. type
        case. 0 do.
            states =. states item_index}~<0
        case. 1 do.
            states =. states item_index}~<(;0$~#){."1 y#~([:+./(<name)&=)@(2&{::)"1 y
        end.
    end.
    pulses =. 0 0
    for. i.1000 do.
        queue =. ,:'broadcaster';'button';0
        while. 0<#queue do.
            'name sender pulse' =. {.queue
            queue =. }.queue
            pulses =. pulses pulse}~>:pulse{pulses
            index =. ({."1 y)i.<name
            if. index=#y do.
                continue.
            end.
            'type outputs' =. }.index{y
            select. type
            case. 0 do.
                if. -.pulse do.
                    state =. -.index{::states
                    states =. states index}~<state
                    queue =. queue,outputs,"0 _ name;state
                end.
            case. 1 do.
                'names flags' =. index{::states
                flags =. pulse(names i.<sender)}flags
                states =. states index}~<names;flags
                queue =. queue,outputs,"0 _ name;-.*./flags
            case. 2 do.
                queue =. queue,outputs,"0 _ name;pulse
            end.
        end.
    end.
    */pulses
}}(((](];~[}.~2>])'%&'i.{.)@{.,[:<]<;._1@}.~3+[)~i.&' ');.(_2)(#~','&~:)1!:1<'input'
