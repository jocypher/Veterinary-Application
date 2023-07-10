import SearchIcon from "../../assets/search.png"
import UpdateIcon from "../../assets/notification.png"
import Avatar from "../../assets/avatar.png"
import "../../Styles/"

const Navigation = ({id}) => {
  return (
    <>
    <nav className="navbar">
      <div className="navbar__toggle" id="mobile-menu">
        <span className="bar"></span>
        <span className="bar"></span>
        <span className="bar"></span>
      </div>
      <div className="logo">
        <a href="/">VetMed</a>
      </div>
      <div className="navbar__search">
        <img src={SearchIcon} />
        <input type="search" placeholder="Search anything..."/>
      </div>
      <div className="navbar__update">
        <img src={UpdateIcon} alt="your update" />
        <label htmlFor="update">Update</label>
      </div>
      <div className="navbar__login">
          <div className="container">
            <img src={Avatar} alt="" />
          </div>
          <label htmlFor="avatar">{id}</label>
      </div>
    </nav>
    </>
  )
}

export default Navigation