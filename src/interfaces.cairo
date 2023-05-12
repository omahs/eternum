use starknet::ContractAddress;
use eternum::erc721::erc721::{RealmData, Position};
use eternum::alias::ID;

#[abi]
trait IERC721 {
    fn balance_of(owner: ContractAddress) -> u256;
    fn owner_of(token_id: ID) -> ContractAddress;
    fn get_approved(token_id: ID) -> ContractAddress;
    fn is_approved_for_all(owner: ContractAddress, operator: ContractAddress);
    fn transfer_from(from: ContractAddress, to: ContractAddress, token_id: ID);
    // TODO: safe_transfer_from
    fn approve(approved: ContractAddress, token_id: ID);
    fn set_approval_for_all(operator: ContractAddress, approval: bool);
    fn fetch_realm_data(realm_id: ID) -> RealmData;
    fn realm_position(realm_id: ID) -> Position;
    fn mint(to: ContractAddress);
    fn set_realm_data(
        realm_id: ID, realm_data: u128, realm_name: u256, realm_position: Position
    );
}