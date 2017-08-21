function [c] = configuration() 
    c.configArray = {
        struct( ...
            'name', 'outputName', ...
            'value', 'CSV Output' ...
        )
        struct( ...
            'name', 'reference', ...
            'value', '' ...
        )
        struct( ...
            'name', 'functionToEachOutput', ...
            'value', 'output' ...
        )
        struct( ...
            'name', 'functionToFinalOutput', ...
            'value', 'finalOutput' ...
        )
    };

    c.inputArray = { 
        struct( ...
            'name', 'outputRoot', ...
            'required', true, ...
            'default', pwd ...
        ) 
        struct( ...
            'name', 'outputFolder', ...
            'required', true, ...
            'default', '/' ...
        )
        struct( ...
            'name', 'outputRootName', ...
            'required', true, ...
            'default', [strjoin(strtrim(cellstr(num2str(fix(clock)'))'),...
                                                    '-')]...
        )
        struct( ...
            'name', 'outputFinalName', ...
            'required', true, ...
            'default', 'feature'...
        ) 
        struct( ...
            'name', 'outputExtension', ...
            'required', true, ...
            'default', 'csv'...
        )         
        struct( ...
            'name', 'output', ...
            'required', true, ...
            'internal', true ...
        )       
        struct( ...
            'name', 'final', ...
            'required', true, ...
            'default', true ... 
        )
       struct( ...
            'name', 'each', ...
            'required', true, ...
            'default', false ... 
        )       
        struct( ...
            'name', 'transpose', ...
            'required', true, ...
            'default', false ...
        )
        struct( ...
            'name', 'processingUid', ...
            'required', false, ...
            'internal', true, ...
            'default', num2str(now) ...
        )
        struct( ...
            'name', 'outputConfiguration', ...
            'required', true, ...
            'internal', true ...
        )
        struct(...
            'name', 'categoryNames', ...
            'required', true, ...
            'default', true ...
        )
        struct(...
            'name', 'categorySeparator', ...
            'required', true, ...
            'default', ':' ...
        )
        struct(...
            'name', 'undefinedCategory', ...
            'required', true, ...
            'default', 'Undefined' ...
        )
        struct(...
            'name', 'featureConfiguration', ...
            'required', true, ...
            'default', true ...
        )
        struct(...
            'name', 'featureConfigurationPrefix', ...
            'required', true, ...
            'default', 'CONFIG' ...
        )
        struct(...
            'name', 'featureConfigurationSeparator', ...
            'required', true, ...
            'default', '.' ...
        )   
        struct(...
            'name', 'sort', ...
            'required', false, ...
            'default', false ...
        )
        struct(...
            'name', 'showUid', ...
            'required', true, ...
            'default', true ...
        )   
    };

end