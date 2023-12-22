0 0$1!:2&2{{
    heights =. 0$~2,~}:"1>./+/"2 y
    y =. y,~0 0 0,:}:$heights
    supports =. 0$~,~#y
    chains =. supports
    for_item. y do.
        if. item_index=0 do.
            continue.
        end.
        'start size' =. item
        positions =. (<}:start)+&.>,{<@i."0}:size
        overlapping_heights =. heights{~positions
        max_height =. {.>./overlapping_heights
        heights =. heights positions}~item_index,~max_height+{:size
        supporting =. (i.#y)e.{:"1(#~max_height={."1)overlapping_heights
        supports =. supporting item_index}supports
        chain =. (*./supporting#chains)+.supporting*1=+/supporting
        chains =. chain item_index}chains
    end.
    +/,}."1 chains
}}(/:{:@{."2)(}:,1+{:-{.)@(/:~)"2".;._2@(,&',');._2@(,&'~');.(_2)1!:1<'input'
