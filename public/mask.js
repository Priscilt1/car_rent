function maskPercentage (number) {
    return new Intl.NumberFormat('pt-BR',
    { style:'percent',
        minimumFractionDigits: 2, 
        maximumFractionDigits: 4
    }).format(number/100)
}

console.log(maskPercentage(25.1))