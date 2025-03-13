# vm.blobhashes issue with --gas-report

When using `vm.blobhashes` with `forge test --gas-report`, the test fails with:

```
❯ forge test
[⠊] Compiling...
No files changed, compilation skipped

Ran 1 test for test/Counter.t.sol:CounterTest
[PASS] test_Increment() (gas: 27652)
Suite result: ok. 1 passed; 0 failed; 0 skipped; finished in 4.98ms (298.88µs CPU time)

Ran 1 test suite in 156.28ms (4.98ms CPU time): 1 tests passed, 0 failed, 0 skipped (1 total tests)


❯ forge test --gas-report
[⠊] Compiling...
[⠒] Compiling 1 files with Solc 0.8.26
[⠑] Solc 0.8.26 finished in 538.57ms
Compiler run successful!

Ran 1 test for test/Counter.t.sol:CounterTest
[FAIL: EvmError: Revert] setUp() (gas: 0)
Suite result: FAILED. 0 passed; 1 failed; 0 skipped; finished in 4.79ms (0.00ns CPU time)
```

Bug tracking issue: https://github.com/foundry-rs/foundry/issues/10074
