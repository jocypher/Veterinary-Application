
const Sidebar = () => {
  return (
    <>
    <div className="sidebar">
      <h1>Side menu</h1>
      <ul className="menu-list">
        <li><a href="/">Dictinary</a></li>
        <li><a href="/">Ug Library</a></li>
        <li><a href="/">Events</a></li>
        <li><a href="/">FAQ</a></li>
        <li><a href="/">Feedback</a></li>
        <li><a href="/">Contact</a></li>
        <li><a href="/">Upload</a></li>
      </ul>
      <div className="logout__btn">
        <a href="/">Log Out</a>
      </div>
    </div>
    </>
  )
}

export default Sidebar