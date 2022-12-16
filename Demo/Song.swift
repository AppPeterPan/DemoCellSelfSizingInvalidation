//
//  Song.swift
//  Demo
//
//  Created by Peter Pan on 2022/12/16.
//

import Foundation

struct Song {
    let name: String
    let lyrics: String
    var showLyrics = false
}

extension Song {
    static var loveSongs: [Song] {
        [
            Song(name: "First Love", lyrics: """
最後のキスは
タバコのflavorがした
ニガくてせつない香り

明日の今頃には
あなたはどこにいるんだろう
誰を想ってるんだろう

You are always gonna be my love
いつか誰かとまた恋に落ちても
I'll remember to love
You taught me how
You are always gonna be the one
今はまだ悲しいlove song
新しい歌 うたえるまで
"""),
            Song(name: "初戀", lyrics: """
うるさいほどに高鳴る胸が
柄にもなく竦む足が今
静かに頬を伝う涙が
私に知らせる これが初恋と

I need you, I need you
I need you, I need you
I need you, I need you
I need you, I need you
""")
        ]
    }
}
