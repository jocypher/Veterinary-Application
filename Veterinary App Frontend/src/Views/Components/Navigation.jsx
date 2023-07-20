import SearchIcon from "../../assets/search.png"
import UpdateIcon from "../../assets/notification.png"
import Avatar from "../../assets/avatar.png"
import "../../Styles/Navigation.css"
import { Link } from "react-router-dom"

const Navigation = ({id, update}) => {
  return (
    <>
    <div className="navbar">
      <div className="media">
      <div className="navbar__toggle" id="mobile-menu">
        <span className="bar"></span>
        <span className="bar"></span>
        <span className="bar"></span>
      </div>
      <div className="logo">
        <Link to="/home" className="logo-name">VetMed</Link>
      </div>
      </div>
      <div className="navbar__search">
        <img src={SearchIcon} id="search_icon"/>
        <input type="search" placeholder="Search anything..." id="search" />
      </div>
      <div className="user__mode">
      <div className="navbar__update">
        <div className="dropdown">
        <div className="update__image">
        <img src={UpdateIcon} alt="your update" id="update-icon"/>
        <div className="dropdown-menu">
        <ul>
          <li><a href="/" className="update-menu">{update}</a></li>
        </ul>
        </div>
        </div>
        </div>
        <h6 className="image-name">Update</h6>
      </div>
      <div className="navbar__login">
          <div className="container">
            <img src={Avatar} id="avatar-icon"/>
          </div>
          <h6 className="image-name">{id}</h6>
      </div>
      </div>
    </div>
    </>
  )
}

export default Navigation