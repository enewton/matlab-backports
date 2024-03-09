# MATLAB-Backports

Run modern MATLAB code on older versions of MATLAB.

- Are you restricted to a specific (old) version of MATLAB in your workplace?
- Do you ever download a library from [File
  Exchange](https://mathworks.com/matlabcentral/fileexchange), only to find it
  will not work with your version.
- Do you ever send your code to a fellow worker or customer, only to find they
  can not run it.

This project could be for you.

## About The Project

This is an open source implementation of some of the newer MATLAB low-level
functions, which will, on a good day, allow you to run some newer MATLAB code.

The motivation behind this project is not to financially impact Mathworks by
reducing the number of customers on maintenance. I think there are enough new
features in each release to warrant upgrading.

I have spent a lot of my professional life working at engineering companies who
pay maintenance but for one reason or another, a project is frozen on an
particular old version of MATLAB. I can see the new functions but can not use
them, and the code I write is constantly in an 'old style'.

It is also frustrating when sending code to a user, or downloading a library
from File Exchange, only to find the code does not run.

This project is an attempt to smooth out some of those problems.

The project is primarily going to tackle the simple helper functions which make
MATLAB code cleaner, as oppose to the bigger pieces of new functionality, which
is the main value that Mathworks charge for.

The functions often will not be full implementations for every corner case or
optional parameter, but hope to cover the main use cases. Please request
additional functionality if it would be useful.

In an attempt to avoid copyright issues, I am not viewing any Mathworks source
in order to implement these functions, and deliberately have not copied their
help text into this library. Hopefully Mathworks will see that this is a useful
library for legitimate customers.

## Installation

Run activate.m

    >> run <full-path-to-extracted-code>/backports/activate

This will add the necessary folders R20xxa/b to your MATLAB path to enable the
functionality. If for example, you are running MATLAB R2022b, then the script
will only add the folders R2023a and R2023b to your path.

## Contributing

I would welcome any suggestions of useful functions to add to this library. If
you can explain your use case, then I can make sure it will work well enough for
you.

For now I don't really want pull requests containing new functions as I need to
be careful that I am not encroaching on Mathworks' copyright.

## License

Distributed under the MIT License. See LICENSE for more information.

## Contact

Erik Newton - <erik_newton@hotmail.com>

Project Link: <https://github.com/enewton/matlab-backports>
