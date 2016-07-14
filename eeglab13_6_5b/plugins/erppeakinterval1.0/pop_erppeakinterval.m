function [ERP_MEASURES] = pop_erppeakinterval(ERP)
    g1 = [0.5 0.5 ];
    s1 = [1];
    geometry = { g1 g1 s1 g1 s1 g1 s1 g1 s1 g1 s1 g1 s1 g1 s1 };
    uilist = { ...
          { 'Style', 'text', 'string', 'Window'} ...
          { 'Style', 'edit', 'string', '[ 300 600 ]' 'tag' 'Window' } ...
          ...
          { } ...
          { 'Style', 'text', 'string', '1x2 Matrix of latencies to identify the peak within.' } ...
          ...
          { } ...
          ...
          { 'Style', 'text', 'string', 'Peak Polarity'  } ...
          { 'Style', 'popupmenu', 'string', 'Positive | Negative' 'tag' 'Polarity' } ...
          ...
          { } ...
          ...
          { 'Style', 'text', 'string', 'Neighborhood'} ...
          { 'Style', 'edit', 'string', '9' 'tag' 'Neighborhood' } ...
          ...
          { } ...
          ...
          { 'Style', 'text', 'string', 'Channels'} ...
          { 'Style', 'edit', 'string', '1:ERP.nchan' 'tag' 'Channels' } ...
          ...
          { } ...
          ...
          { 'Style', 'text', 'string', 'Bin'} ...
          { 'Style', 'edit', 'string', '1' 'tag' 'Bin' } ...
          ...
          { } ...
          ...
          { 'Style', 'text', 'string', 'Interval'} ...
          { 'Style', 'edit', 'string', '[ -25 25 ]' 'tag' 'Interval' } ...
          ...
          { } ...
          ...
          { 'Style', 'text', 'string', 'Label'} ...
          { 'Style', 'edit', 'string', '' 'tag' 'Label' } ...
          ...
          { } ...
          ...
      };
 
      [ tmp1 tmp2 strhalt structout ] = inputgui( geometry, uilist, 'pophelp(''erppeakinterval'');', 'Extract Peak Interval');
      if ~isempty(structout)
          structout.Window = str2num(structout.Window);
          structout.Neighborhood = str2num(structout.Neighborhood);
          structout.Channels = eval(structout.Channels);
          structout.Bin = str2num(structout.Bin);
          structout.Interval = str2num(structout.Interval);
          if (structout.Polarity == 1)
              structout.Polarity = 'Positive';
          else
              structout.Polarity = 'Negative';
          end
          com = sprintf('\n%%Equivalent command:\n ERP_MEASURES = erppeakinterval(%s, ''Window'', %s, ''Polarity'', ''%s'', ''Neighborhood'', %d, ''Channels'', %s, ''Bin'', %d, ''Interval'', %s, ''Label'', ''%s'');\n',inputname(1), mat2str(structout.Window), structout.Polarity, structout.Neighborhood, mat2str(structout.Channels), structout.Bin, mat2str(structout.Interval), structout.Label);
          disp(com)
          ERP_MEASURES = erppeakinterval(ERP, 'Window', structout.Window, 'Polarity', structout.Polarity, 'Neighborhood', structout.Neighborhood, 'Channels', structout.Channels, 'Bin', structout.Bin, 'Interval', structout.Interval, 'Label', structout.Label);
      else
          ERP_MEASURES = '';
      end

end