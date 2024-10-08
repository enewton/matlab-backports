function hex2rgbTest

    %% Normal operation "double" (default)
    hexStr = ["#000102", "#030405", "#060708", "#090a0B", "#0C0D0E", "#0F1011", "#FDFEFF"];

    rgb = hex2rgb(hexStr);

    assert(all(abs(rgb - [ ...
        0.0000    0.0039    0.0078
        0.0118    0.0157    0.0196
        0.0235    0.0275    0.0314
        0.0353    0.0392    0.0431
        0.0471    0.0510    0.0549
        0.0588    0.0627    0.0667
        0.9922    0.9961    1.0000]) < 1e-4, 'all'));

    %% single
    rgb = hex2rgb(hexStr, 'OutputType', 'single');

    assert(all(abs(rgb - [ ...
        0.0000    0.0039    0.0078
        0.0118    0.0157    0.0196
        0.0235    0.0275    0.0314
        0.0353    0.0392    0.0431
        0.0471    0.0510    0.0549
        0.0588    0.0627    0.0667
        0.9922    0.9961    1.0000]) < 1e-4, 'all'));

    %% uint8
    rgb = hex2rgb(hexStr, 'OutputType', 'uint8');

    assert(isequal(rgb, [ ...
        00     1     2
        03     4     5
        06     7     8
        09    10    11
        12    13    14
        15    16    17
        253   254   255]));

    %% uint16
    rgb = hex2rgb(hexStr, 'OutputType', 'uint16');
    assert(isequal(rgb, [ ...
        0000     257     514
        0771    1028    1285
        1542    1799    2056
        2313    2570    2827
        3084    3341    3598
        3855    4112    4369
        65021   65278   65535]));

    %% Short decimal code
    hexStr = ["#012", "#345", "#678", "#9AB", "#CDE", "#FFF"];
    rgb = hex2rgb(hexStr);
    assert(all(abs(rgb - [ ...
        0.0000    0.0667    0.1333
        0.2000    0.2667    0.3333
        0.4000    0.4667    0.5333
        0.6000    0.6667    0.7333
        0.8000    0.8667    0.9333
        1.0000    1.0000    1.0000
        ]) < 1e-4, 'all'));

    rgb = hex2rgb(hexStr, 'OutputType', 'single');
    assert(all(abs(rgb - [ ...
        0.0000    0.0667    0.1333
        0.2000    0.2667    0.3333
        0.4000    0.4667    0.5333
        0.6000    0.6667    0.7333
        0.8000    0.8667    0.9333
        1.0000    1.0000    1.0000
        ]) < 1e-4, 'all'));

    rgb = hex2rgb(hexStr, 'OutputType', 'uint8');
    assert(isequal(rgb, [ ...
        000    17    34
        051    68    85
        102   119   136
        153   170   187
        204   221   238
        255   255   255]));

    rgb = hex2rgb(hexStr, 'OutputType', 'uint16');
    assert(isequal(rgb, [ ...
        00000    4369    8738
        13107   17476   21845
        26214   30583   34952
        39321   43690   48059
        52428   56797   61166
        65535   65535   65535]));

    %% Vector
    hexStr = ["#0072BD" "#D95319" "#EDB120" "#7E2F8E" "#77AC30" "#4DBEEE"];

    rgb = hex2rgb(hexStr);

    assert(all(abs(rgb - [ ...
        0.0000    0.4471    0.7412
        0.8510    0.3255    0.0980
        0.9294    0.6941    0.1255
        0.4941    0.1843    0.5569
        0.4667    0.6745    0.1882
        0.3020    0.7451    0.9333]) < 1e-4, 'all'));

    %% 2D Array
    hexStr = ["#0072BD" "#D95319"; "#EDB120" "#7E2F8E"];

    rgb = hex2rgb(hexStr);

    assert(all(abs(rgb(:,:,1) - [ ...
        0.0000    0.8510
        0.9294    0.4941]) < 1e-4, 'all'));

    assert(all(abs(rgb(:,:,2) - [ ...
        0.4471    0.3255
        0.6941    0.1843]) < 1e-4, 'all'));

    assert(all(abs(rgb(:,:,3) - [ ...
        0.7412    0.0980
        0.1255    0.5569]) < 1e-4, 'all'));
end
