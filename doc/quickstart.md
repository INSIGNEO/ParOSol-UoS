# Quickstart #

You can run the examples supplied.

We consider that the `parosol` and `createxmf` executable is in `$PATH`.

Extract the examples using:

    tar xjvf mesh.tar.bz2

The following command starts the simulation:

    mpirun -np 4 parosol --level 3 --tol 1e-7 mesh/h5/sphere.h5

ParOSol is started with four processes. This is suited for a computer with
four cores.
It is recommended to use only the number of physical cores for the simulation.
You can query the number of physical cores using the command `lscpu`.

At most three level are used in the multigrid preconditioner and
the solving tolerance is set to 1e–7. For large input mesh more levels
should be used. The results is written back into the original mesh.

To visualize the results in Paraview, we need to create a XDMF file, containing
the description of the data in the HDF5 file.
To do so, use the `createxmf` tool:

    createxmf mesh/h5/sphere.h5

Now open up Paraview and open `mesh/h5/sphere.xmf`.
