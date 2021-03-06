%% script for loading in event markers into EEG file from Netstation
%% list of eventcodes
eventCode = {'1STaD', ...
'1SN', ... 
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1CTr', ...
'1CTa', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CN', ...
'2STr', ...
'2STa', ...
'2STrD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STaD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'2CN', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2CTaD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STaD', ...
'2STaD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2STr', ...
'2STa', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'2SN', ...
'2STaD', ...
'2STrD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'2STrD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STaD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0CTrD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1CN', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CTaD', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1SN', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1STaD', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'2CTrD', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CTaD', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STr', ...
'1STa', ...
'2SN', ...
'2STaD', ...
'2STrD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'1STr', ...
'1STa', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STrD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'1STr', ...
'1STa', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'2STrD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STaD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'2CN', ...
'2CTaD', ...
'2CTrD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CTrD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2STrD', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'1STrD', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STr', ...
'1STa', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'2SN', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'1CTrD', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1STr', ...
'1STa', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTaD', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'1CTr', ...
'1CTa', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CTaD', ...
'2CTrD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'2SN', ...
'2STaD', ...
'2STrD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STr', ...
'2STa', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'2CTrD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CTaD', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STaD', ...
'2CTrD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CTrD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'1CTrD', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'2STrD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'0STrD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1STr', ...
'1STa', ...
'2CTr', ...
'2CTa', ...
'2CTrD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CTaD', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CTaD', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'0CTrD', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STaD', ...
'2STrD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'0STrD', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1STrD', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STaD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2STaD', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2CN', ...
'2CTaD', ...
'2CTrD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'1SN', ...
'1STaD', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1SN', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'1CTrD', ...
'1CN', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2CTrD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CTaD', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2STrD', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2STaD', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2CTr', ...
'2CTa', ...
'2CTaD', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STaD', ...
'2STaD', ...
'2STrD', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1SN', ...
'1STr', ...
'1STa', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'1STaD', ...
'1STrD', ...
'1SN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CN', ...
'2CTrD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CTaD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTaD', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTr', ...
'1CTa', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STaD', ...
'2STaD', ...
'2STrD', ...
'2SN', ...
'2SN', ...
'2STr', ...
'2STa', ...
'2SN', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CTr', ...
'1CTa', ...
'1CN', ...
'1CN', ...
'1CTrD', ...
'1CN', ...
'1CTaD', ...
'1CN', ...
'1CN', ...
'1CN', ...
'1CTaD', ...
'2CN', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CTaD', ...
'2CN', ...
'2CTrD', ...
'2CTr', ...
'2CTa', ...
'2CTaD', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTrD', ...
'2CN', ...
'2CTaD', ...
'2CTrD', ...
'2CN', ...
'2CN', ...
'2CTaD', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CTr', ...
'2CTa', ...
'2CN', ...
'2CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTaD', ...
'0CN', ...
'0CN', ...
'0CTrD', ...
'0CN', ...
'0CN', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0STrD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0SN', ...
'0STrD', ...
'0SN', ...
'0STaD', ...
'0SN', ...
'0STrD', ...
'0SN'};

%% load in event markers into EEG file
nEventCodes = length(eventCode);
EEG = pop_selectevent( EEG, 'type',{'CELL' 'SESS' 'bgin' 'resp' 'rule'},'select','inverse','deleteevents','on');
for eventLabel = 1:nEventCodes
    EEG = pop_editeventvals(EEG,'changefield',{eventLabel 'type' strcat('',char(eventCode(eventLabel)),'')});
    disp('adding event codes')
end;
    disp('ALL DONE')
    
