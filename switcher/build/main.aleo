program switcher.aleo;

function dummy:

closure main:
    input r0 as field;
    input r1 as field;
    input r2 as field;
    sub r2 r1 into r3;
    mul r3 r0 into r4;
    add r4 r1 into r5;
    sub r2 r4 into r6;
    output r5 as field;
    output r6 as field;
