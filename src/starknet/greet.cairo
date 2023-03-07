#[contract]
mod Greeter {
    use starknet::get_caller_address;

    #[event]
    fn Greet(from: ContractAddress, msg: felt) {}

    #[external]
    fn greet() {
      let sender = get_caller_address();
      Greet(sender, 'Hello from Starknet');
    }
}
