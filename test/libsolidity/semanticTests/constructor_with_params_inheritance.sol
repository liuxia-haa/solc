contract C {
    uint public i;
    uint public k;

    constructor(uint newI, uint newK) {
        i = newI;
        k = newK;
    }
}
contract D is C {
    constructor(uint newI, uint newK) C(newI, newK + 1) {}
}
// ====
// compileViaYul: also
// ----
// constructor(): 2, 0 ->
// gas irOptimized: 124844
// gas legacy: 139250
// gas legacyOptimized: 119367
// i() -> 2
// k() -> 1
