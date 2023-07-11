import Navigation from "../Components/Navigation"
import Sidebar from "../Components/Sidebar"
import Recents from "../Components/Recents"
import "../../Styles/home.css"
import slides from '../../assets/slides.svg'
import books from '../../assets/books.svg'
import pasco from '../../assets/pasco.svg'
import news from '../../assets/news.svg'

const Home = () => {
  return (
    <>
    <body>
    <header>
      <Navigation id="10952541" update="There will be exams on 5th July"/>
    </header>
    <main>
      <aside><Sidebar/></aside>
      <nav>
      <section>
        <h3>Welcome</h3>
        <h4 className="resource_name">Resources</h4>
        <div className="resource__holder">
          <div className="resource__element">
            <a href="/" className="resource__link">
              <div className="media__element">
                <img src={slides}/>
                <p className="title">Slides</p>
              </div>
            </a>
          </div>
          <div className="resource__element">
          <a href="/" className="resource__link">
              <div className="media__element">
                <img src={pasco}/>
                <p className="title">Past Questions</p>
              </div>
              </a>
          </div>
          <div className="resource__element">
          <a href="/" className="resource__link">
              <div className="media__element">
                <img src={books}/>
                <p className="title">Books</p>
              </div>
            </a>
          </div>
          <div className="resource__element">
          <a href="/" className="resource__link">
              <div className="media__element">
                <img src={news}/>
                <p className="title">News</p>
              </div>
            </a> 
          </div>
        </div>
      </section>
      <footer>
        <div className="recent__holder">
          <div className="recent__name">
          <h5>Recently viewed</h5>
          </div>
          <ul className="properties">
            <li className="props">Name</li>
            <li className="props">Type</li>
            <li className="props">Last Opened</li>
          </ul>
        </div>
      <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
      </footer>
      </nav>
    </main>
    </body>
    </>
  )
}

export default Home