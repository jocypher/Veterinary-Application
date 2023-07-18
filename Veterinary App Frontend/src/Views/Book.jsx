import BookItems from './Components/BookItems'
import "../Styles/Mainbook.css"
import Navigation from './Components/Navigation'

const Book = () => {
  return (
    <>
    <main className='main_book'>
    <header><Navigation id="10952541"/></header>
    <div className="book_main">
    <h1>Books</h1>
    <ul className="book_type">
        <li className="book_name">Title</li>
        <li className="book_name">Author</li>
        <li className="book_name">Page</li>
        <li className="book_name_year">Year</li>
        <li className="book_name">Publisher</li>
    </ul>
    <div className="book_container">
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Introduction to computer organization" author="Samuel William" page="1111"  year="2017"  publisher="Lionsgate Publisher"/>
    </div>
    </div>
    </main>
    </>
  )
}

export default Book