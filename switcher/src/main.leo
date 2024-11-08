// Source: https://github.com/iden3/circomlib/blob/master/circuits/switcher.circom
program switcher.aleo {
    function main(sel: field, L: field, R: field) -> (field, field) {
        let aux: field = (R - L) * sel;
        let outL: field = aux + L;
        let outR: field = R - aux;
        return (outL, outR);
    }

    transition dummy() {}
}
