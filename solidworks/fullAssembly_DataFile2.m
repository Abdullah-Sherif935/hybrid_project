% Simscape(TM) Multibody(TM) version: 24.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(33).translation = [0.0 0.0 0.0];
smiData.RigidTransform(33).angle = 0.0;
smiData.RigidTransform(33).axis = [0.0 0.0 0.0];
smiData.RigidTransform(33).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 24.250000000000021 5.9999999999999982];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = "B[encoder fixation-1:-:link 2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [100.00000000000001 149.99999999999994 -1.4210854715202004e-14];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962595 -0.57735026918962573 0.57735026918962562];
smiData.RigidTransform(2).ID = "F[encoder fixation-1:-:link 2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 24.000000000000021 9.9999999999999947];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = "B[second link holder-1:-:link 2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [57.000000000000007 149.99999999999989 0];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962595 -0.57735026918962573 0.57735026918962562];
smiData.RigidTransform(4).ID = "F[second link holder-1:-:link 2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [15.000000002849809 59.999999999999979 -25.999999999999996];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(5).ID = "B[holder of Encoder-1:-:encoder fixation-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-25.999999999999968 -4.7499999999999813 3.0000000000000124];  % mm
smiData.RigidTransform(6).angle = 1.570796326794897;  % rad
smiData.RigidTransform(6).axis = [-1 -5.3547272479875832e-17 -7.3234414932239612e-17];
smiData.RigidTransform(6).ID = "F[holder of Encoder-1:-:encoder fixation-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 -8];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "B[Base-1:-:cross holder of the motor-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [5.8619775700208265e-14 -3.979039320256561e-13 79.000000000000327];  % mm
smiData.RigidTransform(8).angle = 3.1415926535897865;  % rad
smiData.RigidTransform(8).axis = [-1 -0 -0];
smiData.RigidTransform(8).ID = "F[Base-1:-:cross holder of the motor-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 135];  % mm
smiData.RigidTransform(9).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(9).axis = [1 0 0];
smiData.RigidTransform(9).ID = "B[Base-1:-:Base cover-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [7.3758494638165815e-29 7.1054273576013111e-15 -2.8421709430403938e-14];  % mm
smiData.RigidTransform(10).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(10).axis = [-5.19029264012258e-15 -1 -1.1102230246251565e-16];
smiData.RigidTransform(10).ID = "F[Base-1:-:Base cover-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 24.000000000000021 7.9999999999999929];  % mm
smiData.RigidTransform(11).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(11).axis = [1 0 0];
smiData.RigidTransform(11).ID = "B[second link holder-1:-:NTN_6000  (Bearing 10x26x8)-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [7.9999999999999574 2.1621210883528957e-14 -1.4700550322962407];  % mm
smiData.RigidTransform(12).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(12).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(12).ID = "F[second link holder-1:-:NTN_6000  (Bearing 10x26x8)-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 0];  % mm
smiData.RigidTransform(13).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(13).axis = [-1 -0 -0];
smiData.RigidTransform(13).ID = "B[cover of the bearing-3:-:NTN_6000  (Bearing 10x26x8)-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [1.577968866683932e-10 1.3424220974664331e-10 -1.4700550322962123];  % mm
smiData.RigidTransform(14).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(14).axis = [0.57735026918962573 0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(14).ID = "F[cover of the bearing-3:-:NTN_6000  (Bearing 10x26x8)-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [0 0 2.0000000000000018];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = "B[Base cover-1:-:NTN_6000  (Bearing 10x26x8)-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [7.9999999999999707 2.6645352591003757e-15 -8.5750035165785557e-15];  % mm
smiData.RigidTransform(16).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(16).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(16).ID = "F[Base cover-1:-:NTN_6000  (Bearing 10x26x8)-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [0 0 8.9999999999999947];  % mm
smiData.RigidTransform(17).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(17).axis = [1 0 0];
smiData.RigidTransform(17).ID = "B[cover of the bearing-1:-:NTN_6000  (Bearing 10x26x8)-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [-6.0000000000000275 0 -6.0032452383683477e-15];  % mm
smiData.RigidTransform(18).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(18).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(18).ID = "F[cover of the bearing-1:-:NTN_6000  (Bearing 10x26x8)-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0 0 0];  % mm
smiData.RigidTransform(19).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(19).axis = [1 0 0];
smiData.RigidTransform(19).ID = "B[cross holder of the motor-1:-:MH2530-6.35-10-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [-8.0824236192711396e-14 -9.5923269327613525e-14 30.399999999999675];  % mm
smiData.RigidTransform(20).angle = 3.1415926535897842;  % rad
smiData.RigidTransform(20).axis = [1 -7.0678690879950565e-31 -1.5728546641096343e-16];
smiData.RigidTransform(20).ID = "F[cross holder of the motor-1:-:MH2530-6.35-10-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [60.000000002849802 59.999999999999979 -26.000000000000004];  % mm
smiData.RigidTransform(21).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(21).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(21).ID = "B[holder of Encoder-1:-:second link holder-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [-25.999999999999979 -5.0000000000000053 5.0000000000000089];  % mm
smiData.RigidTransform(22).angle = 1.570796326794897;  % rad
smiData.RigidTransform(22).axis = [-1 -5.354727247988605e-17 -7.3234414932229394e-17];
smiData.RigidTransform(22).ID = "F[holder of Encoder-1:-:second link holder-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0 24.000000000000021 -3.0000000000000027];  % mm
smiData.RigidTransform(23).angle = 0;  % rad
smiData.RigidTransform(23).axis = [0 0 0];
smiData.RigidTransform(23).ID = "B[second link holder-1:-:cover of the bearing-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [1.2494507439907402e-10 4.9047052129603698e-11 3.00000000015784];  % mm
smiData.RigidTransform(24).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(24).axis = [-0.82631411725951476 0.56320953438096999 8.9970840357478773e-18];
smiData.RigidTransform(24).ID = "F[second link holder-1:-:cover of the bearing-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [0 -30 0];  % mm
smiData.RigidTransform(25).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(25).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(25).ID = "B[holder of Encoder-1:-:MH2530-6.35-10-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-1.3988810110276972e-14 1.0658141036401503e-14 20.600000000000001];  % mm
smiData.RigidTransform(26).angle = 4.6614702184556537e-16;  % rad
smiData.RigidTransform(26).axis = [-0.69071685887283696 0.72312531477527542 -1.1641435597320696e-16];
smiData.RigidTransform(26).ID = "F[holder of Encoder-1:-:MH2530-6.35-10-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [0 0 8.9999999999999947];  % mm
smiData.RigidTransform(27).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(27).axis = [1 0 0];
smiData.RigidTransform(27).ID = "B[cover of the bearing-1:-:holder of Encoder-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [-1.1147913445765798e-13 40.200000000000024 -4.1004084153097958e-14];  % mm
smiData.RigidTransform(28).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(28).axis = [0.57735026918962606 -0.57735026918962495 0.57735026918962629];
smiData.RigidTransform(28).ID = "F[cover of the bearing-1:-:holder of Encoder-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [0 0 2.0000000000000018];  % mm
smiData.RigidTransform(29).angle = 0;  % rad
smiData.RigidTransform(29).axis = [0 0 0];
smiData.RigidTransform(29).ID = "B[Base cover-1:-:cover of the bearing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [2.0261570199409107e-15 5.3290705182007514e-15 -5.0000000000000009];  % mm
smiData.RigidTransform(30).angle = 3.0866894851635984;  % rad
smiData.RigidTransform(30).axis = [-5.2061319478668392e-18 -5.5532074110579626e-17 1];
smiData.RigidTransform(30).ID = "F[Base cover-1:-:cover of the bearing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [0 0 8.9999999999999947];  % mm
smiData.RigidTransform(31).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(31).axis = [1 0 0];
smiData.RigidTransform(31).ID = "B[cover of the bearing-1:-:MH2530-6.35-10-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [-2.6645352591003757e-15 -1.2079226507921703e-13 -49.600000000000023];  % mm
smiData.RigidTransform(32).angle = 2.1223652100323448e-15;  % rad
smiData.RigidTransform(32).axis = [-0.99741590728451612 -0.07184363504031259 7.6042206583763495e-17];
smiData.RigidTransform(32).ID = "F[cover of the bearing-1:-:MH2530-6.35-10-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [12.383012613042865 -48.404709819543314 45.908598744801381];  % mm
smiData.RigidTransform(33).angle = 1.5707963267948861;  % rad
smiData.RigidTransform(33).axis = [-1 0 0];
smiData.RigidTransform(33).ID = "RootGround[Base-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(10).mass = 0.0;
smiData.Solid(10).CoM = [0.0 0.0 0.0];
smiData.Solid(10).MoI = [0.0 0.0 0.0];
smiData.Solid(10).PoI = [0.0 0.0 0.0];
smiData.Solid(10).color = [0.0 0.0 0.0];
smiData.Solid(10).opacity = 0.0;
smiData.Solid(10).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.18366490622675308;  % kg
smiData.Solid(1).CoM = [0.15897869133713216 -5.5656693241183737e-06 55.009131850874141];  % mm
smiData.Solid(1).MoI = [504.18091681819396 507.11229052627806 304.36548745799575];  % kg*mm^2
smiData.Solid(1).PoI = [-8.1063692416942081e-05 1.2263425920330893 -1.0184594390503877e-05];  % kg*mm^2
smiData.Solid(1).color = [1 1 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Base*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.055215799464703473;  % kg
smiData.Solid(2).CoM = [0 0 5.0005531418792311];  % mm
smiData.Solid(2).MoI = [28.402564494903785 28.383055602164369 55.820171216476304];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0.00107542579325738];  % kg*mm^2
smiData.Solid(2).color = [1 1 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Base cover*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.0042955426434030195;  % kg
smiData.Solid(3).CoM = [0 0 5.4858316198365022];  % mm
smiData.Solid(3).MoI = [0.32517227384146213 0.37100711526980162 0.6380695662631658];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [1 1 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "cover of the bearing*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.015490164947771702;  % kg
smiData.Solid(4).CoM = [0 0 3];  % mm
smiData.Solid(4).MoI = [5.0622371338011281 5.0622371338011183 10.031533277915615];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "cross holder of the motor*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.033169538362843483;  % kg
smiData.Solid(5).CoM = [-0.11690260716762131 0.1197219971226112 14.855806045283213];  % mm
smiData.Solid(5).MoI = [4.0233716288523302 4.0255070043399916 2.8988625031834006];  % kg*mm^2
smiData.Solid(5).PoI = [0.017499762886790504 0.019560255069627528 -0.01508560529046531];  % kg*mm^2
smiData.Solid(5).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "MH2530-6.35-10*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.012056274830138042;  % kg
smiData.Solid(6).CoM = [0 23.611162999743431 3.0000000000000004];  % mm
smiData.Solid(6).MoI = [2.6836972967462445 2.113118339933326 4.7231597675673145];  % kg*mm^2
smiData.Solid(6).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(6).color = [1 1 1];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "encoder fixation*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.15710802659510839;  % kg
smiData.Solid(7).CoM = [19.953818114573188 105.03610679831299 0.00022570757375773689];  % mm
smiData.Solid(7).MoI = [390.72065843374855 148.44225940140569 537.20067205146233];  % kg*mm^2
smiData.Solid(7).PoI = [0.00092033005549638659 0.00062715165432328278 -141.02241815284998];  % kg*mm^2
smiData.Solid(7).color = [0.77647058823529413 0.75686274509803919 0.73725490196078436];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "link 2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.047495990983000905;  % kg
smiData.Solid(8).CoM = [22.600394853128076 56.961335651446632 5.8777924348039059e-05];  % mm
smiData.Solid(8).MoI = [28.339491317199343 48.866566567302449 60.748609612645893];  % kg*mm^2
smiData.Solid(8).PoI = [-2.1045808107880216e-05 -8.8286344026263763e-06 -8.0922145263178802];  % kg*mm^2
smiData.Solid(8).color = [1 1 1];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "holder of Encoder*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.015009791766998843;  % kg
smiData.Solid(9).CoM = [0 19.900483954204983 4.9979651835579562];  % mm
smiData.Solid(9).MoI = [3.1884942972590187 3.3629187632787314 6.2521904209245855];  % kg*mm^2
smiData.Solid(9).PoI = [0.00012520812041239568 0 0];  % kg*mm^2
smiData.Solid(9).color = [1 1 1];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "second link holder*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.0024058880971057381;  % kg
smiData.Solid(10).CoM = [0.0039999999999999897 0 0];  % m
smiData.Solid(10).MoI = [2.4774912559483395e-07 1.3636205316357995e-07 1.363620531635822e-07];  % kg*m^2
smiData.Solid(10).PoI = [0 0 0];  % kg*m^2
smiData.Solid(10).color = [0.6470588235294118 0.61960784313725492 0.58823529411764708];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = "NTN_6000  (Bearing 10x26x8)*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(4).Rz.Pos = 0.0;
smiData.CylindricalJoint(4).Pz.Pos = 0.0;
smiData.CylindricalJoint(4).ID = "";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.CylindricalJoint(1).Rz.Pos = 89.999999999999972;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = "[second link holder-1:-:link 2-1]";

smiData.CylindricalJoint(2).Rz.Pos = 3.1457198327168787;  % deg
smiData.CylindricalJoint(2).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(2).ID = "[cover of the bearing-1:-:NTN_6000  (Bearing 10x26x8)-8]";

smiData.CylindricalJoint(3).Rz.Pos = -176.8542801672825;  % deg
smiData.CylindricalJoint(3).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(3).ID = "[cover of the bearing-1:-:holder of Encoder-1]";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.CylindricalJoint(4).Rz.Pos = 6.978139665614262;  % deg
smiData.CylindricalJoint(4).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(4).ID = "[cover of the bearing-1:-:MH2530-6.35-10-1]";


%Initialize the PlanarJoint structure array by filling in null values.
smiData.PlanarJoint(4).Rz.Pos = 0.0;
smiData.PlanarJoint(4).Px.Pos = 0.0;
smiData.PlanarJoint(4).Py.Pos = 0.0;
smiData.PlanarJoint(4).ID = "";

smiData.PlanarJoint(1).Rz.Pos = -89.999999999998664;  % deg
smiData.PlanarJoint(1).Px.Pos = 0;  % mm
smiData.PlanarJoint(1).Py.Pos = 0;  % mm
smiData.PlanarJoint(1).ID = "[second link holder-1:-:NTN_6000  (Bearing 10x26x8)-7]";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(2).Rz.Pos = 158.55610067342153;  % deg
smiData.PlanarJoint(2).Px.Pos = 0;  % mm
smiData.PlanarJoint(2).Py.Pos = 0;  % mm
smiData.PlanarJoint(2).ID = "[cover of the bearing-3:-:NTN_6000  (Bearing 10x26x8)-7]";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(3).Rz.Pos = -179.99999999999997;  % deg
smiData.PlanarJoint(3).Px.Pos = 0;  % mm
smiData.PlanarJoint(3).Py.Pos = 0;  % mm
smiData.PlanarJoint(3).ID = "[Base cover-1:-:NTN_6000  (Bearing 10x26x8)-8]";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(4).Rz.Pos = -3.8324198328967842;  % deg
smiData.PlanarJoint(4).Px.Pos = 0;  % mm
smiData.PlanarJoint(4).Py.Pos = 0;  % mm
smiData.PlanarJoint(4).ID = "[cross holder of the motor-1:-:MH2530-6.35-10-1]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 89.999999999999972;  % deg
smiData.RevoluteJoint(1).ID = "[encoder fixation-1:-:link 2-1]";

smiData.RevoluteJoint(2).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(2).ID = "[Base-1:-:cross holder of the motor-1]";

smiData.RevoluteJoint(3).Rz.Pos = -176.16758016710321;  % deg
smiData.RevoluteJoint(3).ID = "[holder of Encoder-1:-:MH2530-6.35-10-1]";

