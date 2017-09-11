import Foundation

// Input your parameters here
let startUrl = URL(string: "https://sports.yahoo.co.jp/")!
let niseUrl = URL(string: "http://made.livesense.co.jp/")!
var wordToSearch = "弱い巨人"
wordToSearch = "竹本"
let maximumPagesToVisit = 10

// Crawler Parameters
let semaphore = DispatchSemaphore(value: 0)
var visitedPages: Set<URL> = [] // mutable
var pagesToVisit: Set<URL> = [niseUrl] // mutable


// Crawler Core
func crawl() {
    
    guard visitedPages.count <= maximumPagesToVisit else {
        print("👺最大クロール数に到達")
        semaphore.signal()
        return
    }
    
    guard let pageToVisit = pagesToVisit.popFirst() else {
        print("😇もうクロールするページがない")
        semaphore.signal()
        return
    }
    if visitedPages.contains(pageToVisit) {
        crawl()
    } else {
        visit(page: pageToVisit)
    }
}


func visit(page url: URL) {
    visitedPages.insert(url)
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        defer { crawl() }
        guard
            let data = data,
            error == nil,
            let document = String(data: data, encoding: .utf8) else { return }
        parse(document: document, url: url)
    }
    
    print("🔎 Visiting page: \(url)")
    task.resume()
}


func parse(document: String, url: URL) {
    
    
    
    func find(word: String) {
        if document.contains(word) {
            print("✅ Word '\(word)' found at page \(url)")
        }
    }
    
    func collectLinks() -> [URL] {
        func getMatches(pattern: String, text: String) -> [String] {
            // used to remove the 'href="' & '"' from the matches
            func trim(url: String) -> String {
                return String(url.characters.dropLast()).substring(from: url.index(url.startIndex, offsetBy: "href=\"".characters.count))
            }
            
            let regex = try! NSRegularExpression(pattern: pattern, options: [.caseInsensitive])
            let matches = regex.matches(in: text, options: [.reportCompletion], range: NSRange(location: 0, length: text.characters.count))
            return matches.map { trim(url: (text as NSString).substring(with: $0.range)) }
        }
        
        let pattern = "href=\"(http://.*?|https://.*?)\""
        let matches = getMatches(pattern: pattern, text: document)
        return matches.flatMap { URL(string: $0) }
    }
    
    find(word: wordToSearch)
    collectLinks().forEach { pagesToVisit.insert($0) }
}

crawl()
semaphore.wait()
