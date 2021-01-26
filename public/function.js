function printDouble(number, callback ){
    return new Promise (resolve => {
        setTimeout(
            () => {
              callback(number)
              resolve(number)
            }, 
            Math.floor(Math.random() * 100) + 1
          )
    })
  }

function myCallback (number) {
    console.log(number *2)
}
  
async function printAll(){
    await printDouble(5, myCallback) //10
    await printDouble(10, myCallback) //20
    await printDouble(22, myCallback) //44
    await printDouble(1, myCallback) //2
    await printDouble(89, myCallback) //178
  }
  
  printAll()