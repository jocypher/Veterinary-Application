import "../../Styles/bookItem.css"
const BookItems = ({title,author, page,year,publisher}) => {
  return (
    <>
    <ul className="books">
      <li className="book_items">{title}</li>
      <li className="book_items">{author}</li>
      <li className="book_items">{page}</li>
      <li className="book_items_year">{year}</li>
      <li className="book_items">{publisher}</li>
    </ul>
    </>
  )
}

export default BookItems