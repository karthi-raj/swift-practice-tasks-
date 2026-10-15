import Foundation

// Task 3.15: Book and Library classes

class Book {
    var title: String
    var author: String

    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

class Library {
    var books: [Book] = []

    func addBook(_ book: Book) {
        books.append(book)
    }

    func removeBook(title: String) {
        books.removeAll { $0.title == title }
    }

    func searchBook(title: String) -> [Book] {
        return books.filter { $0.title.lowercased() == title.lowercased() }
    }

    func listBooks() {
        for book in books {
            print("\(book.title) by \(book.author)")
        }
    }
}

let library = Library()
library.addBook(Book(title: "Swift Basics", author: "Apple"))
library.addBook(Book(title: "Advanced Swift", author: "Chris"))
library.addBook(Book(title: "iOS Development", author: "John"))
print("Search result for 'Swift Basics':")
let result = library.searchBook(title: "Swift Basics")
for book in result {
    print("\(book.title) by \(book.author)")
}
print("All books:")
library.listBooks()
