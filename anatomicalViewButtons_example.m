clearvars; close all
% matGeom (https://github.com/mattools/matGeom) has to be added to the 
% MATLAB path to use this example.

%% Load example data
exampleFile = 'z013.mat';
if ~exist(exampleFile,'file')
    websave(exampleFile,...
        'https://github.com/MCM-Fischer/VSDFullBodyBoneModels/raw/master/Bones/z013.mat');
end
load(exampleFile)
iOrientation = 'LPS'; % The data has an LPS orientation
% Select the left femur
mesh=B(5).mesh;

%% Test
validStrings={...
    'RAS','RSP','RPI','RIA',...
    'ALS','ASR','ARI','AIL',...
    'LPS','LSA','LAI','LIP',...
    'PRS','PSL','PLI','PIR',...
    'IAR','IRP','IPL','ILS',...
    'SAL','SLP','SPR','SRA'};

aCS1=validStrings{randi(24)};
aCS2=validStrings{randi(24)};
mesh=transformPoint3d(mesh, anatomicalOrientationTFM(iOrientation,aCS1));
mesh=transformPoint3d(mesh, anatomicalOrientationTFM(aCS1, aCS2));
mesh=transformPoint3d(mesh, anatomicalOrientationTFM(aCS2,iOrientation));
visualizeMeshes(mesh)
anatomicalViewButtons(iOrientation)

%% R
%% Convert 'RAS' to 'RIA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','RAS')))
% anatomicalViewButtons('RAS')
%% Convert 'RAS' to 'RIA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','RIA')))
% anatomicalViewButtons('RIA')
%% Convert 'RAS' to 'RPI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','RPI')))
% anatomicalViewButtons('RPI')
%% Convert 'RAS' to 'RSP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','RSP')))
% anatomicalViewButtons('RSP')
%% A
%% Convert 'RAS' to 'ALS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','ALS')))
% anatomicalViewButtons('ALS')
%% Convert 'RAS' to 'ASR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','ASR')))
% anatomicalViewButtons('ASR')
%% Convert 'RAS' to 'ARI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','ARI')))
% anatomicalViewButtons('ARI')
%% Convert 'RAS' to 'AIL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','AIL')))
% anatomicalViewButtons('AIL')
%% L
%% Convert 'RAS' to 'LPS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','LPS')))
% anatomicalViewButtons('LPS')
%% Convert 'RAS' to 'LSA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','LSA')))
% anatomicalViewButtons('LSA')
%% Convert 'RAS' to 'LAI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','LAI')))
% anatomicalViewButtons('LAI')
%% Convert 'RAS' to 'LIP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','LIP')))
% anatomicalViewButtons('LIP')
%% P
%% Convert 'RAS' to 'PRS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','PRS')))
% anatomicalViewButtons('PRS')
%% Convert 'RAS' to 'PSL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','PSL')))
% anatomicalViewButtons('PSL')
%% Convert 'RAS' to 'PLI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','PLI')))
% anatomicalViewButtons('PLI')
%% Convert 'RAS' to 'PIR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','PIR')))
% anatomicalViewButtons('PIR')
%% I
%% Convert 'RAS' to 'IAR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','IAR')))
% anatomicalViewButtons('IAR')
%% Convert 'RAS' to 'IRP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','IRP')))
% anatomicalViewButtons('IRP')
%% Convert 'RAS' to 'IPL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','IPL')))
% anatomicalViewButtons('IPL')
%% Convert 'RAS' to 'ILS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','ILS')))
% anatomicalViewButtons('ILS')
%% S
%% Convert 'RAS' to 'SAL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','SAL')))
% anatomicalViewButtons('SAL')
%% Convert 'RAS' to 'SLP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','SLP')))
% anatomicalViewButtons('SLP')
%% Convert 'RAS' to 'SPR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','SPR')))
% anatomicalViewButtons('SPR')
%% Convert 'RAS' to 'SRA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalOrientationTFM('RAS','SRA')))
% anatomicalViewButtons('SRA')


% [List.f, List.p] = matlab.codetools.requiredFilesAndProducts([mfilename '.m']); 
% List.f = List.f'; List.p = List.p';