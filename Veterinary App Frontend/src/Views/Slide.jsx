import SlideItem from "./Components/SlideItem"
import '../Styles/slides.css'
import Navigation from "./Components/Navigation"
const Slide = () => {
    return (
      <>
      <main className="main_slide">
        <header><Navigation id="10952541"/></header>
      <div className="slides_main">
      <h1>Slides</h1>
      <ul className="Slides_type">
          <li className="slides_name">Title</li>
          <li className="slides_name">Session</li>
          <li className="slides_name">Slides</li>
      </ul>
      <div className="slides_container">
      <SlideItem title="Vertinarian Introduction" Session="8" Slides="33"/>
      <SlideItem title="Nature of Work" Session="5" Slides="28"/>
      <SlideItem title="Working conditions" Session="5" Slides="23"/>
      <SlideItem title="Training, Qualifications and Advancement" Session="10" Slides="25"/>
      <SlideItem title="Job Outlook/ Employment" Session="6" Slides="28"/>
      <SlideItem title="Electrocardiography of the Dog and Cat, Diagnosis of Arrhythmias" Session="8" Slides="35"/>
      <SlideItem title="Miller and Evans'\ Anatomy of the Dog" Session="6" Slides="12"/>
      <SlideItem title="Essentials of Small Animal Anesthesia and Analgesia" Session="9" Slides="18"/>
      <SlideItem title="Manual of Canine and Feline Cardiology" Session="11" Slides="15"/>
      <SlideItem title="Miller and Evans'\ Anatomy of the Dog 2" Session="21" Slides="10"/>
      <SlideItem title="Farm Animal Anesthesia: Cattle, Small Ruminants, Camelids, and Pigs" Session="18" Slides="21"/>
      <SlideItem title="Current Therapy in Large Animal Theriogenology" Session="9" Slides="38"/>
      </div>
      </div>
      </main>
      </>
    )
  }
  
  export default Slide