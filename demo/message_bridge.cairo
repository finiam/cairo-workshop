%lang starknet
from starkware.starknet.common.messages import send_message_to_l1
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.alloc import alloc

@storage_var
func l1_contract_storage() -> (l1_address: felt) {
}

@storage_var
func l1_message_storage() -> (message: felt) {
}

@constructor
func constructor{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}(
    l1_address: felt
) {
    l1_contract_storage.write(l1_address);
    return ();
}

@view
func l1_contract_address{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}() -> (
    l1_address: felt
) {
    let (l1_address) = l1_contract_storage.read();
    return (l1_address=l1_address);
}

@view
func l1_message{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}() -> (
  l1_message: felt
) {
  let (l1_message) =  l1_message_storage.read();
  return (l1_message=l1_message);
}

@external
func send_message{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}(
    message: felt, id: felt
) {
    let (message_payload: felt*) = alloc();
    assert message_payload[0] = id;
    assert message_payload[1] = message;

    let (l1_address) = l1_contract_address();

    send_message_to_l1(to_address=l1_address, payload_size=1, payload=message_payload);

    return ();
}

@l1_handler
func receive_message{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}(
  from_address: felt, message: felt
) {
  l1_message_storage.write(message);

  return ();
}
