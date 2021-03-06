function result = ssc_omp(X, D, K, solver_params)
    solver = spx.cluster.ssc.SSC_OMP(X, D, K);
    solver.Quiet = true;
    result = solver.solve();
end
