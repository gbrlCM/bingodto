import Foundation

public struct FeedBingoOutput: Codable {
    public var id: UUID
    public var name: String
    public var keyWords: [String]
    public var wordCount: Int
    
    public init(id: UUID, name: String, keyWords: [String], wordCount: Int) {
        precondition(keyWords.count == 3)
        self.id = id
        self.name = name
        self.keyWords = keyWords
        self.wordCount = wordCount
    }
}

public struct BingoOutput: Codable {
    public var id: UUID
    public var creatorId: String
    public var name: String
    public var emoji: String
    public var words: [String]
    public var description: String?
    public var theme: Theme
    public var matchesPlayed: Int
    
    public init(id: UUID,
                creatorId: String,
                name: String,
                emoji: String,
                words: [String],
                description: String? = nil,
                theme: Theme,
                matchesPlayed: Int) {
        self.id = id
        self.creatorId = creatorId
        self.name = name
        self.emoji = emoji
        self.words = words
        self.description = description
        self.theme = theme
        self.matchesPlayed = matchesPlayed
    }
}

public enum Theme: String, Codable {
    case magicPurple
}

public struct BingoInput: Codable {
    public var name: String
    public var emoji: String
    public var words: [String]
    public var description: String?
    public var theme: Theme
    
    public init(name: String,
                emoji: String,
                words: [String],
                description: String? = nil,
                theme: Theme) {
        self.name = name
        self.emoji = emoji
        self.words = words
        self.description = description
        self.theme = theme
    }
}

public struct BingoPatch: Codable {
    public var name: String?
    public var emoji: String?
    public var words: [String]?
    public var description: String?
    public var theme: Theme?
    
    public init(name: String? = nil,
                emoji: String? = nil,
                words: [String]? = nil,
                description: String? = nil, t
                theme: Theme? = nil) {
        self.name = name
        self.emoji = emoji
        self.words = words
        self.description = description
        self.theme = theme
    }
}

public struct BingoPreviousMatchOutput: Codable {
    public var bingo: BingoOutput
    public var playersResults: [PlayerResults]
    
}

public struct PlayerResults: Codable {
    public var playerId: String
    public var name: String
    public var wordsFound: Int
    public var position: Int
}
