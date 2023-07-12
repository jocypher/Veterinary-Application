import "../../Styles/Recents.css"

const Recents = ({name, type, lastOpened}) => {
  return (
    <>
    <div className="list">
      <label htmlFor="name">{name}</label>
      <label htmlFor="name">{type}</label>
      <label htmlFor="name">{lastOpened}</label>
    </div>
    </>
  )
}

export default Recents