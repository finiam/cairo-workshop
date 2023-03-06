use cairo_workshop::ex5;

#[test]
#[available_gas(2000000)]
fn queue_dequeue_test() {
    let mut queue = QueueTrait::<felt>::new();
    queue.enqueue(1);
    queue.enqueue(2);
    queue.enqueue(3);

    assert(false, 'Test not implemented');
}
