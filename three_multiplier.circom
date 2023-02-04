pragma circom 2.1.3;

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

template Multiplier3(){
    signal input in1;
    signal input in2;
    signal input in3;

    component m1=Multiplier2();
    component m2=Multiplier2();

    m1.a<==in1;
    m1.b<==in2;

    m2.a<==m1.c;
    m2.b<==in3;

    signal output out;

    out <==m2.c;
}

component main{public [in1,in2]} = Multiplier3();