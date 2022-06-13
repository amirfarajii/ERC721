// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC721Receiver {
    function onERC721Receiver(
        address operator,
        address from,
        address tokenId,
        bytes calldata data
    ) external returns (bytes4);
}
