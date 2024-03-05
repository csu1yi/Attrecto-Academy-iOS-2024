import UIKit

struct Book {
    var title: String
    var author: String?
    var price: Double?
}

class Library {
    var books: [Book] = []
    
    func addBook(book:Book) {
        books.append(book)
    }
    
    func printBooks() {
        for book in books {
            print("Title: \(book.title)")
            if let author = book.author {
                           print("Author: \(author)")
                       } else {
                           print("Author: Author not available")
                       }
            if let price = book.price{
                print("Price: \(price)")
            }
            print("----------")
        }
    }
}

let library = Library()
library.addBook(book: Book(title: "Echoes of the Byte", author: "John Doe", price: 14.99))
library.addBook(book: Book(title: "The Last Algorithm", author: "Jane Smith", price: nil))
library.addBook(book: Book(title: "Quantum Threads", author: "Alan Turing", price: 19.99))
library.addBook(book: Book(title: "Cyber Shadows", author: nil, price: nil))

library.printBooks()

