// Source: https://github.com/iden3/circomlib/blob/master/circuits/montgomery.circom
program montgomery.aleo {
    function main(input: [field; 2]) -> ([field; 2]) {
        let out_0: field = (1field + input[1u32]) / (1field - input[1u32]);
        let out_1: field = out_0 / input[0u32];

        assert_eq(out_0 * (1field - input[1u32]), 1field + input[1u32]);
        assert_eq(out_1 * input[0u32], out_0);
        return [out_0, out_1];
    }

    transition dummy() {}
}
