const {faker} = require('@faker-js/faker');
const array=1000;
const name=[];

for (let index = 0; index < array; index++) {
    const nombre=faker.name.firstName();
    const apellido=faker.name.lastName();
    const correo=faker.internet.email();
    name.push({
        'nombre': nombre,
        'apellido':apellido,
        'correo':correo
    });  
}

console.log(JSON.stringify(name));