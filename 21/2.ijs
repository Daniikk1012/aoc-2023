NB. Assumptions:
NB. * Square grid
NB. * S is at the center
NB. * Borders are empty
NB. * The middle row and column are empty

to_step =. 26501365x
map =. '#'&~:;.(_2)1!:1<'input'
size =. #map
last =. <:size
half =. >.-:size
middle =. <:half

step =. map*.[:+./(,/_1 1*/e.i.2)|.!.0]
zeros =. 0$~$map
steps =. [:+/@,"2@(,step@{:)[:{."3[:step"2^:(1--:/)^:a:step^:0 2
at =. [{~]<.#@[-2-2|]-#@[

top_left =. steps 1(<0 0)}zeros
top_middle =. steps 1(<0,middle)}zeros
top_right =. steps 1(<0,last)}zeros
middle_left =. steps 1(<middle,0)}zeros
middle_middle =. steps 1(<middle,middle)}zeros
middle_right =. steps 1(<middle,last)}zeros
bottom_left =. steps 1(<last,0)}zeros
bottom_middle =. steps 1(<last,middle)}zeros
bottom_right =. steps 1(<last,last)}zeros

diagonal_count =. +/{{
    steps =. 1+size&*
    full =. 0>.<.size%~<:to_step-<:#y
    count =. ((y at to_step)**:>.-:full)+(y at >:to_step)*(*>:)<.-:full
    layers =. }:>:^:(to_step>:steps)^:a:>:full
    count++/(*y at to_step-steps)"0 layers
}}"1 top_left,top_right,bottom_left,:bottom_right

orthogonal_count =. +/{{
    steps =. half+size*<:
    full =. 0>.>:<.size%~half-~to_step-<:#y
    odds =. (y at to_step+2|half)*>.-:full
    evens =. (y at to_step+-.2|half)*<.-:full
    layers =. }:>:^:(to_step>:steps)^:a:>:full
    odds+evens++/(y at to_step-steps)"0 layers
}}"1 top_middle,middle_left,middle_right,:bottom_middle

middle_count =. middle_middle at to_step

0 0$1!:2&2 diagonal_count+orthogonal_count+middle_count
