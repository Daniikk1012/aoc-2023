0 0$1!:2&2{{
    board =. (1,}.)"(1)0$~>./+/"2 y
    for_item. y do.
        'start size' =. item
        positions =. start+"1>,{<@i."0 size
        shift =. >:^:([:*./positions(1-board{~<)@:-"(1)0 0,>:)^:(_)0
        y =. y item_index}~size,:~start-0 0,shift
        for_pos. positions<@:-"(1)0 0,shift do.
            board =. 1 pos}board
        end.
    end.
    safe =. #y
    for_state. y#~-.e.i.#y do.
        board =. (1,}.)"(1)0$~>./+/"2 y
        for_item. state do.
            'start size' =. item
            positions =. start+"1>,{<@i."0 size
            shift =. >:^:([:*./positions(1-board{~<)@:-"(1)0 0,>:)^:(_)0
            state =. state item_index}~size,:~start-0 0,shift
            for_pos. positions<@:-"(1)0 0,shift do.
                board =. 1 pos}board
            end.
            if. shift>0 do.
                safe =. <:safe
                break.
            end.
        end.
    end.
    safe
}}(/:{:@{."2)(}:,1+{:-{.)@(/:~)"2".;._2@(,&',');._2@(,&'~');.(_2)1!:1<'input'
