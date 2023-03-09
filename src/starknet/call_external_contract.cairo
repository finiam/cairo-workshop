#[abi]
trait IAnotherContract {
  fn hello() -> u64;
}

#[contract]
mod HelloStarknet {
    use super::IAnotherContractDispatcherTrait;
    use super::IAnotherContractDispatcher;

    #[external]
    fn call_hello(another_contract_address: ContractAddress) {
        IAnotherContractDispatcher{ contract_address: another_contract_address}.hello();
    }
}
