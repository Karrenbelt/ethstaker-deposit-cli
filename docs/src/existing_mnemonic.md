# existing-mnemonic

## Description
Uses an existing BIP-39 mnemonic phrase for key generation.

## Optional Arguments

- **`--chain`**: The chain to use for generating the deposit data. Options are: 'mainnet', 'holesky', etc...

- **`--mnemonic`**: The mnemonic you used to create withdrawal credentials.

- **`--mnemonic_password`**: The mnemonic password you used in your key generation. Note: It's not the keystore password.

- **`--validator_start_index`**: The index of the first validator's keys you wish to generate. If this is your first time generating keys with this mnemonic, use 0. If you have generated keys using this mnemonic before, use the next index from which you want to start generating keys from (eg, if you've generated 4 keys before (keys #0, #1, #2, #3), then enter 4 here.

- **`--num_validators`**: Number of validators to create.

- **`--keystore_password`**: The password that is used to encrypt the provided keystore. Note: It's not your mnemonic password.

- **`--execution_address`**: The Ethereum 1 address for validator withdrawals.

- **`--pbkdf2`**: Will use pbkdf2 key derivation instead of scrypt for generated keystore files as defined in [EIP-2335](https://eips.ethereum.org/EIPS/eip-2335#decryption-key). This can be a good alternative if you intend to work with a large number of keys.

- **`--folder`**: The folder where keystore and deposit data files will be saved.


## Example Usage

```sh
./deposit existing-mnemonic
```
