function varargout = visualizeMeshes(mesh, patchProps, varargin)
%VISUALIZEMESHES plots a struct array of meshes
%
% AUTHOR: Maximilian C. M. Fischer
% COPYRIGHT (C) 2021-2023 Maximilian C. M. Fischer
% LICENSE: EUPL v1.2
%

defPatchProps.EdgeColor = 'none';
defPatchProps.FaceColor = [223, 206, 161]/255;
defPatchProps.FaceAlpha = 1;
defPatchProps.FaceLighting = 'gouraud';

if isa(mesh, 'matlab.ui.Figure')
    figHandle = mesh;
    mesh = patchProps;
    if ~isempty(varargin)
        patchProps = varargin{1};
    end
elseif isa(mesh, 'matlab.graphics.axis.Axes')
    axHandle = mesh;
    figHandle = ancestor(axHandle,'figure');
    mesh = patchProps;
    if ~isempty(varargin)
        patchProps = varargin{1};
    end
end
    
if nargin == 1
    patchProps = defPatchProps;
else
    if isempty(patchProps)
        patchProps = defPatchProps;
    elseif length(patchProps) == 1
        % Add missing fields
        defFields = fieldnames(defPatchProps);
        fields = fieldnames(patchProps);
        defFields(ismember(defFields,fields))=[];
        for f=1:length(defFields)
            patchProps.(defFields{f}) = defPatchProps.(defFields{f});
        end
    end
end

if length(patchProps)==1
    patchProps=repmat(patchProps, length(mesh), 1);
end

if ~exist('figHandle', 'var')
    % New figure
    MonitorsPos = get(0,'MonitorPositions');
    figHandle = figure('Units','pixels', 'Color', 'w');
    if     size(MonitorsPos,1) == 1
        set(figHandle,'OuterPosition',[1 50 MonitorsPos(1,3)-1 MonitorsPos(1,4)-50]);
    elseif size(MonitorsPos,1) == 2
        set(figHandle,'OuterPosition',[1+MonitorsPos(1,3) 50 MonitorsPos(2,3)-1 MonitorsPos(2,4)-50]);
    end
    figHandle.WindowState = 'maximized';
end

lightSwitch = 1;
if exist('axHandle', 'var')
    lightSwitch = 0;
else
    axHandle = axes;
end
meshHandle=zeros(length(mesh),1);
for i=1:length(mesh)
    meshHandle(i) = patch(axHandle, mesh(i), patchProps(i));
end

if lightSwitch
    H_Light(1) = light(axHandle); light(axHandle, 'Position', -1*(get(H_Light(1),'Position')));
    axis(axHandle, 'on'); axis(axHandle, 'equal'); hold(axHandle, 'on')
    xlabel(axHandle, 'x'); ylabel(axHandle, 'y'); zlabel(axHandle, 'z');
end

if nargout > 0
    varargout{1} = meshHandle;
    varargout{2} = axHandle;
    varargout{3} = figHandle;
end

end