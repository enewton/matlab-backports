function r = sparseDiag(z)
    arguments
        z (10,10) {mustBeSparse}
    end
    r = diag(z);
end
