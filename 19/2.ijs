0 0$1!:2&2{{
    count =. 0
    stack =. ,:(4$,:1 4000);'in'
    while. 0<#stack do.
        'range name' =. {:stack
        stack =. }:stack
        if. (name-:,:'R')+.-.*./<:/"1 range do.
            continue.
        end.
        if. name-:,:'A' do.
            count =. count+*/>:-~/"1 range
            continue.
        end.
        for_item. 1{::y{~({."1 y)i.<name do.
            'range_to name_to' =. item
            stack =. stack,name_to;~range_to(>.&{.,<.&{:)"1 range
        end.
    end.
}}(({.;<@({:"1;"_1~(0{.@{::"1])(>.&{.,<.&{:)"(1)_1(>.&{.,<.&{:)"1/\@|.0{:@{::"1])@(((((((e.i.4){~'xmas'i.{.)(*"0 _+1 4000*"_ 0-.@[)"(_ 1)1&{((1,<:@]),:4000,~])`((4000,~>:@]),:1,])@.('>'=[)[:".2&}.)@{.;}.@}.)~i.&':');._2~','&=),(,:~(4$,:1 4000));]}.~1+i:&',')@}.@}.)~i.&'{')@(#~'}'&~:);._2({.~1+(2$u:10)&E.i.1:)1!:1<'input'
