// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./IERC721.sol";
import "./IERC721Receiver.sol";
import "./IERC721Metadata.sol";
import "./ERC165.sol";
import "./utils/Address.sol";
import "./utils/Context.sol";
import "./utils/String.sol";
import "./utils/IERC165.sol";

abstract contract ERC721 is  Context, ERC165, IERC721, IERC721Metadata {
    using Address for address;
    using Strings for string;
    

    //token name
    string private _name;
    
    //
    string private _symbol;

    //mapping from token ID to owner address
    mapping(uint256 => address) private _owners;

    //mapping owner address to token count
    mapping(address => uint256) private _balances;

    //mapping from token ID from approved address
    mapping(uint256 => address) private _tokenApprovals;
    
    //mapping for owner to operator approvals
    mapping(address => mapping(address => bool)) private _operatorApprovals;

    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165, IERC165) returns(bool){
        return
        interfaceId == type(IERC721).interfaceId ||
        interfaceId == type(IERC721Metadata).interfaceId ||
        super.supportsInterface(interfaceId);
    }

    function balanceOf(address owner) public view virtual override returns(uint256){
        require(owner != address(0), "ERC721: invalid token ID");
        return _balances[owner];
    }
    function ownerOf(uint256 tokenId) public view virtual override returns(address) {
        address owner = _owners[tokenId];
        require(owner != address(0), "ERC721: invalid token ID ");
        return owner;
    }

    function name() public view virtual override returns(string memory) {
        return _name;
    }

    function symbol() public view virtual override returns(string memory) {
        return _symbol;
    }

    








































}