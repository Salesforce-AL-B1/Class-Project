import { LightningElement, api } from 'lwc';

export default class Bike extends LightningElement {

    // this will make it public property for communicating from app component to bike component 
    @api childBike; 
    // this propery is getting filled up by the bike object from app.js 
    

}