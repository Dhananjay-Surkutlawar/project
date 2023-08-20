import React, { useState } from 'react';
import { SomeComponent } from 'mdb-react-ui-kit';
import { Route, Routes } from 'react-router-dom';
import { MDBRadio } from 'mdb-react-ui-kit';
import {
  MDBContainer,
  MDBTabs,
  MDBTabsItem,
  MDBTabsLink,
  MDBTabsContent,
  MDBTabsPane,
  MDBBtn,
  MDBIcon,
  MDBInput,
  MDBCheckbox
}
from 'mdb-react-ui-kit';

export default function CreateAcc() {

  const [justifyActive, setJustifyActive] = useState('tab1');;

  const handleJustifyClick = (value) => {
    if (value === justifyActive) {
      return;
    }

    setJustifyActive(value);
  };

  return (
    <MDBContainer className="p-3 my-5 d-flex flex-column w-50">

      <MDBTabs pills justify className='mb-3 d-flex flex-row justify-content-between'>
        <MDBTabsItem>
          <MDBTabsLink onClick={() => handleJustifyClick('tab1')} active={justifyActive === 'tab1'}>
            USER
          </MDBTabsLink>
        </MDBTabsItem>
        <MDBTabsItem>
          <MDBTabsLink onClick={() => handleJustifyClick('tab2')} active={justifyActive === 'tab2'}>
            DEALER
          </MDBTabsLink>
        </MDBTabsItem>
      </MDBTabs>

      <MDBTabsContent>

        <MDBTabsPane show={justifyActive === 'tab1'}>

          <div className="text-center mb-3">
           <form>
                <table>
                    <tr>
                        <td> <MDBInput wrapperClass='mb-4' label='First Name' id='form1' type='text'/></td>
                        
                        <td> <MDBInput wrapperClass='mb-4' label='Last Name' id='form1' type='text'/></td>
                    </tr>

                    <tr>
                        <td> <MDBInput wrapperClass='mb-4' label='Email' id='form1' type='email'/></td>
                        
                        <td> <MDBInput wrapperClass='mb-4' label='Password' id='form1' type='password'/></td>
                    </tr>

                    <tr>

                        <td><MDBRadio name='flexRadioDefault' id='flexRadioDefault1' label='Male' /></td>
                        <td> <MDBRadio name='flexRadioDefault' id='flexRadioDefault2' label='Female' defaultChecked /> </td>
                 
                    </tr>

                    <tr>
                      <td> <MDBInput wrapperClass='mb-4' label='Select question' id='form1' type='text'/></td>
                      <td> <MDBInput wrapperClass='mb-4' label='Answer' id='form1' type='text'/></td>
                    </tr>

                    <tr>
                      <td>  <MDBInput wrapperClass='mb-4' label='Select city' id='form1' type='text'/> </td>
                      <td hidden>  <MDBInput wrapperClass='mb-4' label='type' id='form1' type='text' value={1}/> </td>
                      
                    </tr>



                    <tr>
                        <td><div className='d-flex justify-content-center mb-4'>
            <MDBCheckbox name='flexCheck' id='flexCheckDefault' label='I have read and agree to the terms' />
          </div></td>
                    </tr>
                </table>
                
                </form>
          </div>
          

          <MDBBtn className="mb-4 w-100">Create Account</MDBBtn>
        

        </MDBTabsPane>

        <MDBTabsPane show={justifyActive === 'tab2'}>

          {/* <div className="text-center mb-3">
           
            <p className="text-center mt-3">or:</p>
          </div> */}

   

<div className="text-center mb-3">
           <form>
                <table>
                    <tr>
                        <td> <MDBInput wrapperClass='mb-4' label='Dealer Name' id='form1' type='text'/></td>
                        
                        <td> <MDBInput wrapperClass='mb-4' label='Owner Name' id='form1' type='text'/></td>
                    </tr>

                    <tr>
                        <td> <MDBInput wrapperClass='mb-4' label='Email' id='form1' type='email'/></td>
                        
                        <td> <MDBInput wrapperClass='mb-4' label='Password' id='form1' type='password'/></td>
                    </tr>

                    <tr>
                      <td> <MDBInput wrapperClass='mb-4' label='Select question' id='form1' type='text'/></td>
                      <td> <MDBInput wrapperClass='mb-4' label='Answer' id='form1' type='text'/></td>
                    </tr>

                    <tr>
                      <td><MDBInput wrapperClass='mb-4' label='Address' id='form1' type='text'/></td>
                      <td><MDBInput wrapperClass='mb-4' label='Select city' id='form1' type='text'/></td>
                    </tr>

                    
                   

                    <tr>
                        <td><div className='d-flex justify-content-center mb-4'>
            <MDBCheckbox name='flexCheck' id='flexCheckDefault' label='I have read and agree to the terms' />
          </div></td>
                    </tr>
                </table>
                
                </form>
          </div>
          <div className='d-flex justify-content-center mb-4'>
            <MDBCheckbox name='flexCheck' id='flexCheckDefault' label='I have read and agree to the terms' />
          </div>

          <MDBBtn className="mb-4 w-100">Sign up</MDBBtn>

        </MDBTabsPane>

      </MDBTabsContent>

    </MDBContainer>


  );
}

