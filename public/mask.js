function maskPercentage (number) {
    return new Intl.NumberFormat('pt-BR',
    { style:'percent',
        minimumFractionDigits: 2, 
        maximumFractionDigits: 4
    }).format(number/100)
}

console.log(maskPercentage(25.1))


function maskCpf(event) {
        setTimeout(function(){
            let valueFormated = event.target.value.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/g,function( regex, argumet1, argumet2, argumet3, argumet4 ) {
                return argumet1 + '.' + argumet2 + '.' + argumet3 + '-' + argumet4
        })
            event.target.value = valueFormated
        }, 1)
}