private
is: node before: element 
        | key |
        node ifNil: [^ false].
        key := node key.
        ^ sortBlock
                ifNil: [key < element]
                ifNotNil: [(self is: key equalTo: element) ifTrue: [^ false].
                        sortBlock value: key value: element]