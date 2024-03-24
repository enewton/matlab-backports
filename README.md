# MATLAB-Backports

Run modern MATLAB code on older versions of MATLAB.

- Are you restricted to a specific (old) version of MATLAB in your workplace?
- Do you ever download a library from [File
  Exchange](https://mathworks.com/matlabcentral/fileexchange), only to find it
  will not work with your version?
- Do you ever send your code to a fellow worker or customer, only to find they
  cannot run it?

This project could be for you.

## About The Project

This is an open source implementation of some of the newer MATLAB low-level
functions, which will, on a good day, allow you to run some newer code from an
older version of MATLAB.

The motivation behind this project is not to financially impact Mathworks by
reducing the number of customers on maintenance. I think there are enough new
features in each release to warrant upgrading.

I have spent a lot of my professional life working at engineering companies who
pay maintenance but for one reason or another, a project is frozen on an
particular old version of MATLAB. I can see the new functions but cannot use
them, and the code I write is constantly in an 'old style'.

It is also frustrating when sending code to a user, or downloading a library
from File Exchange, only to find the code does not run.

This project is an attempt to smooth out some of those problems.

The project is primarily going to tackle the simple helper functions which make
MATLAB code cleaner, as oppose to the bigger pieces of new functionality, which
is the main value that Mathworks charge for.

In an attempt to avoid copyright issues, I am not viewing any Mathworks source
in order to implement these functions, and deliberately have not copied their
help text into this library. Hopefully Mathworks will see that this is a useful
library for legitimate customers.

## Limitations

1. I will not be implementing any additional optional toolboxes. Partly because
   it would be more likely to impact Mathworks revenue, and partly because they
   are much harder to implement.

2. The functions often will not be full implementations for every corner case or
   optional parameter, but hope to cover the main use cases. Please request
   additional functionality if it would be useful.

3. Some functionality will be impossible to implement if it is a core part of
   the language and you are using a very old MATLAB version. For example the
   string type or tables.

## Installation

Run activate.m

    >> run <full-path-to-extracted-code>/matlab-backports/activate

This will add the necessary folders R20xxa/b to your MATLAB path to enable the
functionality. For example, if you are running MATLAB R2023a, then the script
will only add the folders R2023b and R2024a to your path.

## Bonus Functions

The folder `future` contains some useful functions that do not currently exist
in any version of MATLAB.

To install use the `-future` option of activate:

    >> activate -future

## Contributing

I would welcome any suggestions of useful functions to add to this library. If
you can explain your use case, then I can make sure it will work well enough for
you.

I can not test this on every version of MATLAB, so I owuld welcome any feedback
of failures. Please tell me the MATLAB version and include any error output.

For now I don't really want pull requests containing new functions as I need to
be careful that I am not encroaching on Mathworks' copyright.

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.

## Contact

Project Link: <https://github.com/enewton/matlab-backports>
