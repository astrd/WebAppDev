function square(n) {
    return n * n
};

function square_elts(nums) {
    let result = [];
    // for (let i = 0; i < nums.lenght; i++) 
    // for (let num of nums) {
    //result.push(nums[i] * nums[i]);
    //   result.push(num * num);
    // nums.forEach((num) => {
    //   result.push(num * num);
    //});
    // return result;
    return nums.map(square);
}

function my_map(arr, fn) {
    let resul = [];
    for (let elt of arr) {
        result.push(fn(elt));
    }
    return result;
}

function hello(names) {
    let result = [];
    // for (let i = 0; i < names.lenght; i++) 
    for (let name of names) {
        // result.push('Hello, ' + names[i]);
        result.push('Hello, ' + name);
    }
    return result;
}

function my_filter(arr, pred) {
    let result = [];
    for (let elt of arr) {
        if (elt > 10) {
            return elt;
        }
    }
}
