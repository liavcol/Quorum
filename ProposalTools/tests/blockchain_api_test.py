import pytest
from ProposalTools.utils.chain_enum import Chain
from ProposalTools.apis.block_explorers.chains_api import ChainAPI

@pytest.mark.parametrize(
    "chain, contract_address, function_name, expected_result",
    [
        (Chain.SCR, "0x32f924C0e0F1Abf5D1ff35B05eBc5E844dEdD2A9", "BASE_TO_USD_AGGREGATOR", "0x6bF14CB0A831078629D993FDeBcB182b21A8774C"),
        (Chain.ZK, "0x162C97F6B4FA5a915A44D430bb7AE0eE716b3b87", "ASSET_TO_USD_AGGREGATOR", "0x1824D297C6d6D311A204495277B63e943C2D376E")
    ]
)
def test_chain_api_integration(chain, contract_address, function_name, expected_result):
    """
    End-to-end integration test for the ChainAPI class:
    1. Check if source code fetch works without crashing.
    2. Fetch the ABI of the contract.
    3. Call the smart contract function and verify the result.
    """

    # Step 1: Create a ChainAPI instance for the specified chain
    api = ChainAPI(chain)

    # Step 2: Fetch the source code of the contract and verify it doesn't crash
    source_code = api.get_source_code(contract_address)
    assert source_code is not None, f"Source code retrieval failed for contract: {contract_address}"

    # Step 3: Fetch the ABI of the contract
    abi = api.get_contract_abi(contract_address)
    assert abi is not None and len(abi) > 0, f"ABI retrieval failed for contract: {contract_address}"

    # Step 4: Call the contract function and verify the result
    result = api.call_contract_function(contract_address, function_name)
    assert result.lower() == expected_result.lower(), f"Function call returned incorrect result: {result}. Expected: {expected_result}"