import "../Styles/news.css"
import Navigation from "./Components/Navigation"
import NewsItem from "./Components/NewsItem"
import Sidebar from "./Components/Sidebar"

const News = () => {
  return (
    <>
      <Navigation id="10950660"/>
      <main className="news_main">
        <aside><Sidebar/></aside>
        <nav>
    <div className="news_holder">
      <h1 className="news_header">News</h1>
      <div className="news_main_holder">
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
      <NewsItem title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/>
    </div>
    </div>
    </nav>
    </main>
    </>
  )
}

export default News