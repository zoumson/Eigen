#include <iostream>
#include <cmath>
using namespace std;

#include <Eigen/Core>
// Eigen Geometry module
#include <Eigen/Geometry>

/****************************
* This program demonstrates how to use Eigen geometry module
****************************/

int main ( int argc, char** argv )
{
    // Eigen/Geometry The module provides various representations of rotation and translation
    // 3D rotation matrix directly use Matrix3d or Matrix3f
    Eigen::Matrix3d rotation_matrix = Eigen::Matrix3d::Identity();
    // Rotation vector uses AngleAxis, its underlying layer is not directly Matrix, 
    // but the operation can be treated as a matrix (because the operator is overloaded)
    //Rotate 45 degrees along the Z axis
    Eigen::AngleAxisd rotation_vector ( M_PI/4, Eigen::Vector3d ( 0,0,1 ) );     
    cout .precision(3);
    //Use matrix() to convert to a matrix
    cout<<"rotation matrix =\n"<<rotation_vector.matrix() <<endl;                
    // You can also assign directly
    rotation_matrix = rotation_vector.toRotationMatrix();
    // Coordinate transformation can be performed with AngleAxis
    Eigen::Vector3d v ( 1,0,0 );
    Eigen::Vector3d v_rotated = rotation_vector * v;
    cout<<"(1,0,0) after rotation = "<<v_rotated.transpose()<<endl;
    // Or use the rotation matrix
    v_rotated = rotation_matrix * v;
    cout<<"(1,0,0) after rotation = "<<v_rotated.transpose()<<endl;

    // Euler angle: The rotation matrix can be directly converted into Euler angle
    // ZYX order, that is, roll pitch yaw order
    Eigen::Vector3d euler_angles = rotation_matrix.eulerAngles ( 2,1,0 ); 
    cout<<"yaw pitch roll = "<<euler_angles.transpose()<<endl;

    // Euclidean transformation matrix uses Eigen::Isometry
    // Although it is called 3d, it is essentially a 4*4 matrix
    Eigen::Isometry3d T=Eigen::Isometry3d::Identity();      
    // Rotate according to rotation_vector
    T.rotate ( rotation_vector );    
    // Set the translation vector to (1,3,4)
    T.pretranslate ( Eigen::Vector3d ( 1,3,4 ) );                    
    cout << "Transform matrix = \n" << T.matrix() <<endl;

    // Use transformation matrix for coordinate transformation
    // equivalent to R*v+t
    Eigen::Vector3d v_transformed = T*v;                              
    cout<<"v tranformed = "<<v_transformed.transpose()<<endl;

    // For affine and projective transformations, use Eigen::Affine3d and Eigen::Projective3d.
    // Quaternion
    // You can directly assign AngleAxis to a quaternion, and vice versa
    Eigen::Quaterniond q = Eigen::Quaterniond ( rotation_vector );
    // Please note that the order of coeffs is (x,y,z,w), w is the real part, and 
    // the first three are the imaginary part
    cout<<"quaternion = \n"<<q.coeffs() <<endl;  
    // You can also assign the rotation matrix to it
    q = Eigen::Quaterniond ( rotation_matrix );
    cout<<"quaternion = \n"<<q.coeffs() <<endl;
    // Use a quaternion to rotate a vector and use overloaded multiplication
    // Note that mathematically it is qvq^{-1}
    v_rotated = q*v; 
    cout<<"(1,0,0) after rotation = "<<v_rotated.transpose()<<endl;

    return 0;
}
