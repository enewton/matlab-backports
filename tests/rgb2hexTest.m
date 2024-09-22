function rgb2hexTest

    %% Convert RGB triplet
    RGB = [0.60 0.30 0.80];
    hex = rgb2hex(RGB);
    assert(hex == "#994DCC");

    %% Convert uint8 RGB triplet
    RGB = uint8([153 77 204]);
    hex = rgb2hex(RGB);
    assert(hex == "#994DCC");

    %% Shorthand
    hex = rgb2hex(RGB,Shorthand=true);
    assert(hex == "#95C");

    %% Matrix
    RGB = [1 0 0
        1 1 0
        1 1 1
        0 1 1
        0 0 1
        0 0 0];
    hex = rgb2hex(RGB);
    assert(isequal(hex, [...
        "#FF0000"
        "#FFFF00"
        "#FFFFFF"
        "#00FFFF"
        "#0000FF"
        "#000000"]));

    %% Image conversion
    img = imread("peppers.png");
    hexStr = rgb2hex(img);
    assert(isequal(size(hexStr), [384, 512]));

    %% Incorrect values
    try
        hex = rgb2hex([2,3,4]);
        assert(false); % We shouldn't get here
    catch e
        assert(isequal(e.message, 'Specify double or single values in the range [0, 1].'))
    end

    %% Incorrect matrix size
    try
        hex = rgb2hex(magic(4));
        assert(false); % We shouldn't get here
    catch e
        assert(isequal(e.message, 'Specify RGB values as an m-by-3 or m-by-n-by-3 matrix.'))
    end
end
