import "../../Styles/NewsItem.css"

const NewsItem = ({title, source}) => {
  return (
    <>
        <ul className="news_ul">
          <li className="news_title">{title}</li>
          <li className="news_source">{source}</li>
        </ul>
    </>
  )
}

export default NewsItem