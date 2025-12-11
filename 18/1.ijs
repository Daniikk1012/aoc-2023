0 0$1!:2&2+/,2~:(+2*0&=*.[:+./(0 _1,1 0,0 1,:_1 0)|.!.0=&2)^:_(2,],2:)"1(2,],2:){{
    board =. 1 1$1
    row =. 0
    col =. 0
    for_item. y do.
        'direction amount' =. item
        select. direction
        case. 'R' do.
            board =. board,"1(0>.(col+amount)-<:{:$board)$0
            for. i.amount do.
                col =. >:col
                board =. 1(<row,col)}board
            end.
        case. 'U' do.
            overflow =. 0>.amount-row
            board =. ((overflow,1)$0),board
            row =. row+overflow
            for. i.amount do.
                row =. <:row
                board =. 1(<row,col)}board
            end.
        case. 'L' do.
            overflow =. 0>.amount-col
            board =. (overflow$0),"1 board
            col = col+overflow
            for. i.amount do.
                col =. <:col
                board =. 1(<row,col)}board
            end.
        case. 'D' do.
            board =. board,((0>.(row+amount)-<:#board),1)$0
            for. i.amount do.
                row =. >:row
                board =. 1(<row,col)}board
            end.
        end.
    end.
    board
}}({.@[;".@])&>/@(' '&=<;._2]);.(_2)1!:1<'input'
