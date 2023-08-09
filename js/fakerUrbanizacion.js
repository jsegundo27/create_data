const {faker} = require('@faker-js/faker');
const array=100;
const name=[];
let index=0 ;
for (index; index < array; index++) {
    const urbanizacion=faker.location.streetAddress();
 
    name.push({
         'codurba':index+1,
         'urbanizacion': urbanizacion,
       
    });  
}

console.log(JSON.stringify(name));