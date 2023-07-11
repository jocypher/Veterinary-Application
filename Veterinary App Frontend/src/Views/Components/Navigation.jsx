import SearchIcon from "../../assets/search.png"
import UpdateIcon from "../../assets/notification.png"
import Avatar from "../../assets/avatar.png"
import "../../Styles/Navigation.css"

const Navigation = ({id, update}) => {
  return (
    <>
    <div className="navbar">
      <div className="navbar__toggle" id="mobile-menu">
        <span className="bar"></span>
        <span className="bar"></span>
        <span className="bar"></span>
      </div>
      <div className="logo">
        <a href="/" className="logo-name">VetMed</a>
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
          <li><a href="/" className="update-menu">{update}</a></li>
        </ul>
        </div>
        </div>
        </div>
        <label htmlFor="update" id="image-name">Update</label>
      </div>
      <div className="navbar__login">
          <div className="container">
            <img src={Avatar} id="avatar-icon" />
          </div>
          <label htmlFor="avatar" id="avatar-id">{id}</label>
      </div>
      </div>
    </div>
    </>
  )
}

export default Navigation