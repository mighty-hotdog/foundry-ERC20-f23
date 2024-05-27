## ERC20

**An exploration of the ERC20 and several other related token standards.**

Other related token standards include:

-   **ERC223**: Improvement on ERC20. Allows proper handling of incoming non-ERC20 tokens. But is ERC20 non-backward compatible.
-   **ERC677**: Improvement on ERC20. Allows proper handling of incoming non-ERC20 tokens. Is ERC20 backward compatible.
-   **ERC1363**: Formalized version of ERC677. With more functionality.
-   **ERC777**: ~to be explored~

## Documentation

-   ERC20   https://eips.ethereum.org/EIPS/eip-20
-   ERC223  https://eips.ethereum.org/EIPS/eip-223
-   ERC677  https://github.com/ethereum/EIPs/issues/677
-   ERC1363 https://eips.ethereum.org/EIPS/eip-1363
-   ERC777  https://eips.ethereum.org/EIPS/eip-777

## Requirements

To compile and run this code, you will need:
[git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git), and
[foundry](https://getfoundry.sh/)


## Libraries Required

```
forge install foundry-rs/forge-std --no-commit
forge install OpenZeppelin/openzeppelin-contracts --no-commit

```

## Quickstart

Clone to your local repo and build.
```
git clone https://github.com/saracen75/foundry-ERC20-f23
cd foundry-ERC20-f23
forge build
```