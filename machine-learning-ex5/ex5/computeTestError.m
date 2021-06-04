fprintf('Compute test error...\n')

[lambda_vec, error_train, error_val, error_test] = ...
    validationCurve(X_poly, y, X_poly_val, yval, X_poly_test, ytest);

fprintf('lambda\t\tTest Error\n');
for i = 1:length(lambda_vec)
	fprintf(' %f\t%f\n', ...
            lambda_vec(i), error_train(i), error_val(i), error_test(i));
end