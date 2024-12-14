Object subclass: RussianRoulette [
    RussianRoulette class >> play: [
        | chambers |
        chambers := #(false false false false false true).  "1 chamber with a bullet"
        chambers := chambers shuffle.  "Shuffle chambers"
        FileStream stdout nextLine. "Wait for Enter key"
        
        chambers first ifTrue: [ FileStream stdout nextLine: 'Bang! You''re dead!' ]
        ifFalse: [ FileStream stdout nextLine: 'Click. You''re safe... for now.' ].
    ]
]

RussianRoulette play.
