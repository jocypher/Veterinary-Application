import Navigation from "../Components/Navigation"
import Sidebar from "../Components/Sidebar"
import Recents from "../Components/Recents"
import "../../Styles/home.css"
import slides from '../../assets/slides.svg'
import books from '../../assets/books.svg'
import pasco from '../../assets/pasco.svg'
import news from '../../assets/news.svg'
import { Link } from "react-router-dom"
 
const Home = () => {
  return (
    <>
    <div className="body">
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
            <Link to="/slides" className="resource__link">
              <div className="media__element">
                <img className="mediaImg" src={slides}/>
                <p className="title">Slides</p>
              </div>
            </Link>
          </div>
          <div className="resource__element">
          <Link to="/pastquestions" className="resource__link">
              <div className="media__element">
                <img className="mediaImg" src={pasco}/>
                <p className="title">Past Questions</p>
              </div>
              </Link>
          </div>
          <div className="resource__element">
          <Link to="/books" className="resource__link">
              <div className="media__element">
                <img className="mediaImg" src={books}/>
                <p className="title">Books</p>
              </div>
            </Link>
          </div>
          <div className="resource__element">
          <Link to="/news" className="resource__link">
              <div className="media__element">
                <img className="mediaImg" src={news}/>
                <p className="title">News</p>
              </div>
            </Link> 
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
        <div className="recent__items">
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        <Recents name="DCIT208" type="Slides" lastOpened="20:17"/>
        </div>
      </footer>
      </nav>
    </main>
    </div>
    </>
  )
}

export default Home