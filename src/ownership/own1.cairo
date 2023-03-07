use array::ArrayTrait;

fn main() {
    let mut a = ArrayTrait::new();
    let mut b = pass_by_value(a);
    pass_by_ref(ref b);
    pass_by_ref(ref a);
    pass_by_snapshot(@a);
}

fn pass_by_value(mut arr: Array::<felt>) -> Array::<felt> {
    arr
}

fn pass_by_ref(ref arr: Array::<felt>) {}

fn pass_by_snapshot(x: @Array::<felt>) {}
