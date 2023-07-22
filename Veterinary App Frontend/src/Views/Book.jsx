import BookItems from './Components/BookItems'
import "../Styles/Mainbook.css"
import Navigation from './Components/Navigation'

const Book = () => {
  return (
    <>
    <main className='main_book'>
    <header><Navigation id="10952541"/></header>
    <div className="book_main">
    <h1>Books</h1>
    <ul className="book_type">
        <li className="book_name">Title</li>
        <li className="book_name">Author</li>
        <li className="book_name">Page</li>
        <li className="book_name_year">Year</li>
        <li className="book_name">Publisher</li>
    </ul>
    <div className="book_container">
    <BookItems title="Cotes Clinical Veterinary Advisor Dogs and Cats 4th Edition" author="Leah Cohn" page="604"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="Blackwell\'s Five-minute Veterinary Consult Canine and Feline" author="Samuel William" page="111"  year="2019"  publisher="De-Graft Publisher"/>
    <BookItems title="Small Animal Clinical Techniques" author="Susan Taylor" page="401"  year="2007"  publisher="Taylors Publisher"/>
    <BookItems title="Atlas of Small Animal Ultrasonography" author="Dominique Pennick" page="300"  year="2003"  publisher="Lionsgate Publisher"/>
    <BookItems title="Greene Infectious Diseases of the Dog and Cat" author="Michael LAppin" page="1011"  year="1997"  publisher="Mentos Publisher"/>
    <BookItems title="Small Animal Dermatology: A Color Atlas and Therapeutic Guide" author="Keith Hnilica" page="578"  year="2008"  publisher="Trayons Publisher"/>
    <BookItems title="Essentials of Small Animal Anesthesia and Analgesia" author="Kurt Grimm0" page="98"  year="2017"  publisher="Lionsgate Publisher"/>
    <BookItems title="BSAVA Small Animal Formulary, Part A, Canine and Feline" author="Fergus Allerton" page="400"  year="2003"  publisher="Matayars Publisher"/>
    <BookItems title="BSAVA Small Animal Formulary, Part B, Canine and Feline" author="Fergus Allerton" page="670"  year="2006"  publisher="Matayars Publisher"/>
    <BookItems title="Manual of Canine and Feline Cardiology" author="Larry Tilley" page="1001"  year="2012"  publisher="Debateros Publisher"/>
    <BookItems title="Atlas for the Diagnosis of Tumors in the Dog and Cat" author="Wiley BlackWell" page="789"  year="2014"  publisher="Montero Mushins"/>
    </div>
    </div>
    </main>
    </>
  )
}

export default Book