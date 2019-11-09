# Windows build script for less

The pager [less](http://www.greenwoodsoftware.com/less) is a free,
open-source file pager. It can be built on Windows, but the project does
not provide binaries, and the "official" linked binaries are currently
(at the time of writing) failing to load due to a certificate error.

This project is simply a script to build less, along with CI
infrastructure to publish the resulting binaries.
