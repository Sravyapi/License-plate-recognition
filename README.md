# License-plate-recognition

With increasing number of vehicles on roads, it is getting difficult to manually
enforce laws and traffic rules for smooth traffic flow. Toll-booths are constructed on
freeways and parking structures, where the car has to stop to pay the toll or parking fees.
Also, Traffic Management systems are installed on freeways to check for vehicles
moving at speeds not permitted by law. All these processes have a scope of improvement.
In the center of all these systems lies a vehicle. In order to automate these processes and
make them more effective, a system is required to easily identify a vehicle. The important
question here is how to identify a particular vehicle? The obvious answer to this question
is by using the vehicle’s number plate.
Vehicles in each country have a unique license number, which is written on its
license plate. This number distinguishes one vehicle from the other, which is useful
especially when both are of same make and model. An automated system can be
implemented to identify the license plate of a vehicle and extract the characters from the
region containing a license plate. The license plate number can be used to retrieve more
information about the vehicle and its owner, which can be used for further processing.
Such an automated system should be small in size, portable and be able to process data at
sufficient rate. 
Various license plate detection algorithms have been developed in past few years.
Each of these algorithms has their own advantages and disadvantages. Arth et al.
described the method in which license plate is detected using confidence related
predictions. As multiple detections are available for single license plate, post –processing
methods are applied to merge all detected regions. In addition, trackers are used to limit
the search region to certain areas in an image. Kwasnicka at el. suggests a different
approach of detection using binarization and elimination of unnecessary regions from an
image. In this approach, initial image processing and binarization of an image is carried
out based on the contrast between characters and background in license plate. After
binarizing the image, it is divided into different black and white regions. These regions
are passed through elimination stage to get the final region having most probability of
containing a number plate.
