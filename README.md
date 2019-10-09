# VersionedPackagedDemo

This demo repo does not represent a bunch of code you would check in as a repo of code but rather is picture of a filesystem, a sort of online tarball I suppose.

It shows you what your local filesystem might look like in a world of versioned packaged components.

Note that I'm using the terms libraries, components, packages, and modules pretty much interchangeably here.

Branch_I, II, and III are examples of what would replace our current branches. A "branch" in VPC-land is a version set. Note that a versonset can and under normal development scenarios consist of at least one 'current' version, which is not represented here yet.

Each package would be installed separately. There will be a top level directory for the package and a version subdirectory for each version you are using/need. 

Let's say you are working on Branch_I. If you go in that folder, like any other, you'll have subdir for the main App and then subdirs for each package. But those aren't actually subdirs, they are symlinks. The makefile in App lets you treat them as immediately, local, library subdirectories for including and linking.

There is a script called setup.sh which converts the version_set.txt configuration file into symlinks.

Each Branch folder has a working example of a tiny demo app that uses different versions of libraries A, B, C, and D.
