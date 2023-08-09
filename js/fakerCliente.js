const {faker} = require('@faker-js/faker');
const array=100;
const name=[];
let index=0 ;
for (index; index < array; index++) {
    const nombre=faker.name.firstName();
    const apellido=faker.name.lastName();
    const direccion=faker.location.direction();
    const telefono=faker.phone.number();
    name.push({
        'nombre': nombre+" "+apellido,
        'correo': direccion,
        'telefono':telefono,
        'codurba':index+1
    });  
}

console.log(JSON.stringify(name));