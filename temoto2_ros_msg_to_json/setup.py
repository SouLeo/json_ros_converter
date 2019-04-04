from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

d = generate_distutils_setup(
        packages=['temoto2_ros_msg_to_json'],
        package_dir={'': 'src'},
)

setup(**d)
