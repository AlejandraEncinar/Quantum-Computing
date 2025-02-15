namespace MultiSuperposition {
    open Microsoft.Quantum.Intrinsic;     // for the H operation
    open Microsoft.Quantum.Measurement;   // for MResetZ
    open Microsoft.Quantum.Canon;         // for ApplyToEach
    open Microsoft.Quantum.Arrays;        // for ForEach
    
    //@EntryPoint()
    operation MeasureSuperpositionArray(n : Int) : Result[] {
        use qubits = Qubit[n];               // allocate a register of n qubits in |0> 
        ApplyToEach(H, qubits);              // apply H to each qubit in the register
        return ForEach(MResetZ, qubits);     // perform MResetZ on each qubit, returns the resulting array
    }
}