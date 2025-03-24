void main() {
  Book book1 = Book("The Alchemist", "Paulo Coelho", "123456", true);
  Book book2 = Book("The Lord of the Rings", "J.R.R. Tolkien", "123457", true);
  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);

  library.listBooks();

  Member member1 = Member("Zafor", "123");
  Member member2 = Member("Sadiq", "124");

  library.loansBook(book1, member1);
  library.loansBook(book2, member2);

  library.listBooks();
}

//===============Book CLass===================
class Book {
  String? title;
  String? author;
  String? isbn;
  bool? isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

//====================Library Class================
class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loansBook(Book book, Member member) {
    if (book.isAvailable == true) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print("Book is not available");
    }
  }

  void addBook(Book book) {
    books.add(book);
  }

  void listBooks() {
    books.forEach((book) {
      print(
        "Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvailable}",
      );
    });
  }

  void listLoanBooks() {
    loans.forEach((loan) {
      print(
        "Title: ${loan.book.title}, Author: ${loan.book.author}, ISBN: ${loan.book.isbn}, Available: ${loan.book.isAvailable}",
      );
    });
  }
}

//====================Member Class================
class Member {
  String? name;
  String? id;

  Member(this.name, this.id);
}

//====================Loan Class================
class Loan {
  Book book;
  Member member;
  DateTime issueDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.issueDate, [this.returnDate]);

  void returnBook() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}
