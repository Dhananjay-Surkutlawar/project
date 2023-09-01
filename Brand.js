import React from 'react';
import { Nav, Row, Col, Button,Container} from 'react-bootstrap';


// Replace with your actual image path
import Ather from '../../src/Brandlogo/Ather.webp'; // Replace with your button image paths
import BMW from '../../src/Brandlogo/BMW.png';
import Honda from '../../src/Brandlogo/Honda.jpg';
import Kawasaki from '../../src/Brandlogo/Kawasaki.png';
import KTM from '../../src/Brandlogo/Ktm.jpeg';
import OLA from '../../src/Brandlogo/Ola.png';
import RE from '../../src/Brandlogo/RE.jpeg';
import Java from '../../src/Brandlogo/java.png';



export default function Brand() 
{

  
  return (
    <div>
<Container fluid>
      
      

      <Row>
        
            <table style={{marginLeft:'1.5cm'}}>
            
          <div className="button-container">
          <tr>
            <td aria-setsize={10}><a href="/HomeMID">
              <img src={Ather} alt="Ather" className="square-button" height={150} width={200} />
            </a></td>
            <td>
            <a href="/HomeMID">
              <img src={BMW} alt="BMW" className="square-button"  height={150} width={200} />
            </a>
            </td>

            <td>
            <a href="/HomeMID">
              <img src={OLA} alt="OLA " className="square-button"  height={150} width={200}/>
            </a></td>
            
            <td>
            <a href="/HomeMID">
              <img src={Honda} alt="Honda" className="square-button"  height={150} width={200}/>
            </a></td>
           </tr>

            <tr>
            <td>
            <a href="/HomeMID">
              <img src={Kawasaki} alt="Kawasaki" className="square-button"  height={150} width={200}/>
            </a></td>
            
            <td>

            <a href="/HomeMID">
              <img src={RE} alt="Royal Enfield" className="square-button"  height={150} width={200}/>
            </a></td>
            <td>
            <a href="/HomeMID">
              <img src={KTM} alt="KTM" className="square-button" height={150} width={200}/>
            </a></td>
            <td>
            <a href="/HomeMID">
              <img src={Java} alt="Java" className="square-button" height={150} width={200}/>
            </a></td>
            </tr>
           
          </div>
          
          </table>
          </Row>
          </Container>
          </div>
  );
}