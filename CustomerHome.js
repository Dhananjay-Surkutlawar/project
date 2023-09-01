import React, { useState } from 'react';
import { Nav, NavDropdown , Row, Col, Button,Container,Carousel} from 'react-bootstrap';
import { LinkContainer } from 'react-router-bootstrap';
import backgroundImage from '../../src/Bp.jpg';
import Brand from '../Components/Brand';
import Category from '../Components/Category';

// Replace with your actual image path
// import brandButtonImage from '../../src/images/Sport-Bike.webp'; // Replace with your button image paths
// import budgetButtonImage from '../../src/images/Cruiser.webp';
// import displacementButtonImage from '../../src/images/Scooter.webp';
// import bodyStyleButtonImage from '../../src/images/dirt.webp';



import Slide1 from '../../src/images/classic-350.webp';
import Slide2 from '../../src/images/activa-6g.webp';
import Slide3 from '../../src/images/continental-gt.webp';
import Slide4 from '../../src/images/Sport-Bike.webp';
import Slide5 from '../../src/images/rs-200.webp';
import Slide6 from '../../src/images/dirt.webp';





export default function CustomerHome() 
{
  const [BrandPage , setBrandPage] = useState(false)
  const [CategoryPage , setCategoryPage] = useState(false)
  
  
  return (
    <div>

<Nav className="navbar-dark bg-dark" variant="tabs">
      <Nav.Item>
        <LinkContainer to="/">
          <Nav.Link>Home</Nav.Link>
        </LinkContainer>
      </Nav.Item>
      <Nav.Item>
        <LinkContainer to="/motorcycles">
          <Nav.Link>Motorcycles</Nav.Link>
        </LinkContainer>
      </Nav.Item>
      <NavDropdown title="More" id="basic-nav-dropdown">
        <LinkContainer to="/book-test-rides">
          <NavDropdown.Item>Book Test Rides</NavDropdown.Item>
        </LinkContainer>
        <LinkContainer to="/Compare Bikes">
          <NavDropdown.Item>Comapare Bikes</NavDropdown.Item>
        </LinkContainer>
      </NavDropdown>
      <Nav.Item>
        <LinkContainer to="/About us">
          <Nav.Link>About us</Nav.Link>
        </LinkContainer>
      </Nav.Item>

      
      <Nav.Item>
        <LinkContainer to="/Logout">
          <Nav.Link>Logout</Nav.Link>
        </LinkContainer>
      </Nav.Item>

      <Nav.Item>
     
      </Nav.Item>
    </Nav>

      <header
        className="bg-dark text-white text-center py-5"
        style={{
          backgroundImage: `url(${backgroundImage}) `,
          backgroundSize: 'cover',
          backgroundPosition: 'center',
        }}
      >
        <div className="header-content">
          <h1>Welcome to Bikers Planet</h1>
          <p>Your ultimate destination for exploring and choosing your dream bike.</p>
          <input style={{marginLeft: '16cm',
    width: '19%'}} className=" form-control mr-sm-2  col-md-4 text-center "  type="search" placeholder="Search your bike here" aria-label="Search"/> 
    <button className="btn btn-outline-success" type="submit">Search</button>
        </div>
        <div className='text-center col-md-4 col-md-offset-4'> 
  
    </div>
      </header>

      


 <form  className="navbar navbar-light bg-dark">
  <div className='text-center col-md-4 col-md-offset-4'> 
  
    </div>
  </form>
  <div style={{marginLeft:'1.5cm'}}> <h1>       Browse Bike by</h1></div>

  <nav className="navbar navbar-expand-lg navbar-light bg-light ">
  <a className="navbar-brand" href="/Brand"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a style={{marginLeft:'1cm'}} onClick={()=>{setBrandPage(true);setCategoryPage(false)}} class="nav-link" href="#">Brand <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a  onClick={()=>{setBrandPage(false);setCategoryPage(true)}} class="nav-link" href="#">Category</a>
      </li>
      
      
     
      </ul>
  </div>
 

</nav> 

{BrandPage && <span style={{marginLeft:'1cm'}}><Brand/></span> }
{CategoryPage&& <Category/>}


 
     
  
    
    

    <a href='#' ><h4> All Popular Bikes></h4></a>
    <Container fluid>
      <header className="bg-dark text-white text-center py-5">
        <h1>Get Your Desired Bike </h1>
        <p>FIND THE RIGHT BIKE</p>
       <p>Get Comprehensive Information on Bikes!</p>
      </header>

      <Container>
        <Carousel  data-bs-interval="1">
          <Carousel.Item >
          <img
              className="d-block w-100"
              src={Slide1}  height={500} width={500}
              alt="First slide"
            />
            <Carousel.Caption>
              <h3>Royal Enfield Classic350</h3>
              <p>Lies in the sports section <br/>
                   price-2,45,0000
              </p>
            </Carousel.Caption>
          </Carousel.Item>
          <Carousel.Item>
            <img
              className="d-block w-100"
              src={Slide2} height={500} width={500}
              alt="Second slide"
            />
            <Carousel.Caption >
            <h3>Actva-6g</h3>
              <p >Lies in the sports section <br/>
                   price-1,00,0000
              </p>
            </Carousel.Caption>
          </Carousel.Item>
          <Carousel.Item>
            <img
              className="d-block w-100"
              src={Slide3}  height={500} width={500}
              alt="Second slide"
            />
            <Carousel.Caption>
            <h3>Continental-gt</h3>
              <p>Lies in the sports section <br/>
                   price-3,50,0000
              </p>
            </Carousel.Caption>
          </Carousel.Item>
          <Carousel.Item>
            <img
              className="d-block w-100"
              src={Slide4}  height={500} width={500}
              alt="Second slide"
            />
            <Carousel.Caption>
            <h3>Yamaha R-15</h3>
              <p>Lies in the sports section <br/>
                   price-2,00,0000
              </p>
            </Carousel.Caption>
          </Carousel.Item>
          <Carousel.Item>
            <img
              className="d-block w-100"
              src={Slide5} height={500} width={500}
              alt="Second slide"
            />
            <Carousel.Caption>
            <h3>Rs-200</h3>
              <p>Lies in the sports section <br/>
                   price-2,00,0000
              </p>
            </Carousel.Caption>
          </Carousel.Item>
          <Carousel.Item>
            <img
              className="d-block w-100"
              src={Slide6} height={500} width={500}
              alt="Sixth slide"
            />
            <Carousel.Caption>
            <h3>dirt bike</h3>
              <p>Lies in the offroad <br/>
                   price-2,00,0000
              </p>
            </Carousel.Caption>
          </Carousel.Item>

          {/* Add more Carousel.Items for additional slides */}
        </Carousel>
      </Container>

      {/* Additional content and sections */}
    </Container>
 


      
</div>


  );
};


