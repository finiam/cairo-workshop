use cairo_workshop::ex5;
use cairo_workshop::ex5::QueueTrait;

#[test]
#[available_gas(2000000)]
fn queue_dequeue_test() {
    let mut queue = QueueTrait::<felt>::new();
    queue.enqueue(1);
    queue.enqueue(2);
    queue.enqueue(3);

    match queue.dequeue() {
      Option::Some(value) => {
        assert(value == 1, 'wrong value');
      },
      Option::None(_) => {
        assert(false, 'should return value');
      },
    }
}
