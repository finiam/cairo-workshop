#[contract]
mod HelloStarknet {
   struct Storage {
       balance: felt,
   }

   #[external]
   fn increase_balance(amount: felt) {
      let new_balance = balance::read() + amount;
      balance::write(new_balance);
   }

   #[view]
   fn get_balance() -> felt {
       balance::read()
   }
}
