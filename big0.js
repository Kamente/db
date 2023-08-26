// let arrayOfNumbers = [34, 60, 78];
// function sum(array) {
//     let total = 0;
//     for (let i = 0; i < array.length; i++) {
//         total += array[i];
//     }
//     console.log(total);
// }
// sum(arrayOfNumbers);


const array = [36, 14, 1, 7, 21];
function higherOrLower(array) {
    if (array[array.length - 1] > array[0]){
        return "Higher";
    }
    else if (array[array.length - 1] < array[0]) {
        return "Lower";
    }
    else {
        return "Neither";
    }
}