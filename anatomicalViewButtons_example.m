clearvars; close all; opengl hardware

%% Load example data
websave('z013.mat','https://github.com/RWTHmediTEC/VSDFullBodyBoneModels/raw/master/Bones/z013.mat');
load('z013.mat') % in 'RAS'
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
mesh=transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS',aCS1));
mesh=transformPoint3d(mesh, anatomicalCoordinateSystemTFM(aCS1, aCS2));
mesh=transformPoint3d(mesh, anatomicalCoordinateSystemTFM(aCS2,'RAS'));
visualizeMeshes(mesh)
anatomicalViewButtons('RAS')

%% R
%% Convert 'RAS' to 'RIA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','RAS')))
% anatomicalViewButtons('RAS')
%% Convert 'RAS' to 'RIA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','RIA')))
% anatomicalViewButtons('RIA')
%% Convert 'RAS' to 'RPI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','RPI')))
% anatomicalViewButtons('RPI')
%% Convert 'RAS' to 'RSP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','RSP')))
% anatomicalViewButtons('RSP')
%% A
%% Convert 'RAS' to 'ALS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','ALS')))
% anatomicalViewButtons('ALS')
%% Convert 'RAS' to 'ASR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','ASR')))
% anatomicalViewButtons('ASR')
%% Convert 'RAS' to 'ARI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','ARI')))
% anatomicalViewButtons('ARI')
%% Convert 'RAS' to 'AIL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','AIL')))
% anatomicalViewButtons('AIL')
%% L
%% Convert 'RAS' to 'LPS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','LPS')))
% anatomicalViewButtons('LPS')
%% Convert 'RAS' to 'LSA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','LSA')))
% anatomicalViewButtons('LSA')
%% Convert 'RAS' to 'LAI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','LAI')))
% anatomicalViewButtons('LAI')
%% Convert 'RAS' to 'LIP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','LIP')))
% anatomicalViewButtons('LIP')
%% P
%% Convert 'RAS' to 'PRS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','PRS')))
% anatomicalViewButtons('PRS')
%% Convert 'RAS' to 'PSL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','PSL')))
% anatomicalViewButtons('PSL')
%% Convert 'RAS' to 'PLI'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','PLI')))
% anatomicalViewButtons('PLI')
%% Convert 'RAS' to 'PIR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','PIR')))
% anatomicalViewButtons('PIR')
%% I
%% Convert 'RAS' to 'IAR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','IAR')))
% anatomicalViewButtons('IAR')
%% Convert 'RAS' to 'IRP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','IRP')))
% anatomicalViewButtons('IRP')
%% Convert 'RAS' to 'IPL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','IPL')))
% anatomicalViewButtons('IPL')
%% Convert 'RAS' to 'ILS'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','ILS')))
% anatomicalViewButtons('ILS')
%% S
%% Convert 'RAS' to 'SAL'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','SAL')))
% anatomicalViewButtons('SAL')
%% Convert 'RAS' to 'SLP'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','SLP')))
% anatomicalViewButtons('SLP')
%% Convert 'RAS' to 'SPR'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','SPR')))
% anatomicalViewButtons('SPR')
%% Convert 'RAS' to 'SRA'
% visualizeMeshes(transformPoint3d(mesh, anatomicalCoordinateSystemTFM('RAS','SRA')))
% anatomicalViewButtons('SRA')


% [List.f, List.p] = matlab.codetools.requiredFilesAndProducts([mfilename '.m']); 
% List.f = List.f'; List.p = List.p';