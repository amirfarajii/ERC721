//doesn't have license
pragma solidity 0.8.0;
interface IERC721 {
    event Transfer(address index from, address index to , uint256 index tokenId);
    event Approval (address index owner, address index approved, uint256 index tokenId);
    event ApprovedForAll (address index owner, address index opertor, bool approved);
    function balanceOf(address owner) external view returns(uint256 balance);
    function ownerOf(uint256 tokenId) external view returns(address owner);
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    


}