% Inputs:
% fname: the function to be integrated
% a: the upper bound of the integral
% b: the lower bound of the integral
% n: the number of subintervals used

% Outputs:
% q: a scalar representing the integral's approximate value

% The following is an example of how this function might be called
% >> q = trapezoid(@(x)x*sin(x), 0, pi/2, 10)

function q = trapezoid(fname, a, b, n)

% calculate the interval spacing h
h = (b - a) / n; % subtract the intervals and divide by the number of subintervals

% calculate the average slope over the interval from a to b
q = 0.5 * (fname(a) + fname(b)); % add the function bounds together and * by .5

for i = 1 : n - 1
    % add to the sum the evaluation of the function at the next
    % subinterval using a as our reference point
    q = q + fname(a + i * h);
end % end for loop

% multiply by the h that is factored out in the equation
% subintervals are assumed to be evenly spaced
q = q * h; % this final q is the scalar output
