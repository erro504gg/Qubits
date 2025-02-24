namespace QuantumScript {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation Main() : (Result, Result) {
        use q1 = Qubit();
        use q2 = Qubit();
        
        H(q1);
        CNOT(q1, q2);
        DumpMachine();

        let m1 = M(q1);
        let m2 = M(q2);
        Reset(q1);
        Reset(q2);  
        
        return (m1, m2);
    }
}