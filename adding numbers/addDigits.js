// Jon Wexler
// This function takes an integer, adds the digits continually until the resulting number is a single digit
// source: 

var addDigits = function(num) {
    if (num == null || num < 10) return num
    var counter = 0;
    var total = 0;
    while(num>=10 && counter < 200){
        total = 0;
        while(num > 0){
            total += num%10;
            num = parseInt(num/10);
        }
        num = total;
        counter++;
    }
    return total;
};

console.log(addDigits(45));
console.log(addDigits(298));
console.log(addDigits(455));
console.log(addDigits(123));
console.log(addDigits(-123));
console.log(addDigits(0));