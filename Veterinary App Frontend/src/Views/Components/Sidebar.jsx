import '../../Styles/Sidebar.css'

const Sidebar = () => {
  return (
    <>
    <div className="sidebar">
      <h2>Side menu</h2>
      <ul className="menu-list">
        <li><a href="/" className='list-name'>Dictionary</a></li>
        <li><a href="/" className='list-name'>Ug Library</a></li>
        <li><a href="/" className='list-name'>Events</a></li>
        <li><a href="/" className='list-name'>FAQ</a></li>
        <li><a href="/" className='list-name'>Feedback</a></li>
        <li><a href="/" className='list-name'>Contact</a></li>
        <li><a href="/" className='list-name'>Upload</a></li>
      </ul>
      <div className="menu-log">
        <a href="/" className='list-log'>Log Out</a>
      </div>
    </div>
    </>
  )
}

export default Sidebar