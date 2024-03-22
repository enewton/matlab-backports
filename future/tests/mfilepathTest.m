result = mfilepath();
expectedResult = fileparts(mfilename('fullpath'));
assert(isequal(result, expectedResult));
