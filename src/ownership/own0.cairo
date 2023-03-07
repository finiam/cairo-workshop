use array::ArrayTrait;

fn main() {
    let arr0 = ArrayTrait::new();

    let mut arr1 = fill_arr(arr0);

    arr1.append(4);
}

fn fill_arr(arr: Array::<felt>) -> Array::<felt> {
    arr.append(1);
    arr.append(2);
    arr.append(3);

    arr
}
