function q = euler2quatern(phi, theta, psi)
%EULER2QUATERN Converts a ZYX Euler angle orientation to a quaternion
%
%   q = euler2quatern(axis, angle)
%
%   Converts ZYX Euler angle orientation to a quaternion where phi is a
%   rotation around X, theta around Y and psi around Z.
%
%   For more information see:
%   http://x-io.co.uk/quaternions/
%
%	Date          Author          Notes
%	01/01/2015    SOH Madgwick    Initial release

    cosPsi = cos(psi * 0.5);
    sinPsi = sin(psi * 0.5);

    cosTheta = cos(theta * 0.5);
    sinTheta = sin(theta * 0.5);

    cosPhi = cos(phi * 0.5);
    sinPhi = sin(phi * 0.5);

    q = [cosPsi * cosTheta * cosPhi + sinPsi * sinTheta * sinPhi
         -(cosPsi * cosTheta * sinPhi - sinPsi * sinTheta * cosPhi)
         -(cosPsi * sinTheta * cosPhi + sinPsi * cosTheta * sinPhi)
         -(sinPsi * cosTheta * cosPhi - cosPsi * sinTheta * sinPhi)]; % must be conjugate
end

