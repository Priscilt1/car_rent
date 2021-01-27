// function printDouble(number, doubleNumber, callback){
//     return new Promise (resolve => {
//         setTimeout(
//             () => {
                
//                 resolve(callback(number, doubleNumber))
//             }, 
//             Math.floor(Math.random() * 100) + 1
//           )
//     })
//   }

// function myCallback (number, doubleNumber) {
//     return (number *2) + doubleNumber
// }
  
// async function printAll(){
//     let result 
//     result = await printDouble(5, 0, myCallback); // retorna 10
//     console.log(result)
//     result = await printDouble(12, result, myCallback); // retorna 34
//     console.log(result)
//     result = await printDouble(2, result, myCallback); // retorna 38
//     console.log(result)
// }
  
//   printAll()