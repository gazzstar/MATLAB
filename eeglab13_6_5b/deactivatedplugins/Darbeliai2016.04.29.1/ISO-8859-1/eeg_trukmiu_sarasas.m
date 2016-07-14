function [trukmiu_intervalai,persidengiantis_intervalas,maziausia_trukme,ar_patikrintos_visos_rinkmenos]=...
    eeg_trukmiu_sarasas (KELIAS, RINKMENOS)
%
% i programa yra laisva. Js galite j platinti ir/arba modifikuoti
% remdamiesi Free Software Foundation paskelbtomis GNU Bendrosios
% Vieosios licencijos slygomis: 2 licencijos versija, arba (savo
% nuoira) bet kuria vlesne versija.
%
% i programa platinama su viltimi, kad ji bus naudinga, bet BE JOKIOS
% GARANTIJOS; be jokios numanomos PERKAMUMO ar TINKAMUMO KONKRETIEMS
% TIKSLAMS garantijos. irkite GNU Bendrj Viej licencij nordami
% suinoti smulkmenas.
%
% Js turjote kartu su ia programa gauti ir GNU Bendrosios Vieosios
% licencijos kopija; jei ne - raykite Free Software Foundation, Inc., 59
% Temple Place - Suite 330, Boston, MA 02111-1307, USA.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
%
%%
% (C) 2015 Mindaugas Baranauskas
%%

tici=tic;

trukmiu_intervalai=NaN(length(RINKMENOS),2);
persidengiantis_intervalas=[NaN NaN];
maziausia_trukme=NaN;
ar_patikrintos_visos_rinkmenos=true;

prad_kelias=pwd;
try
    cd(KELIAS);
catch err;
    warning(err.message);
    return;
end;
KELIAS=pwd;
cd(prad_kelias);

if ~iscellstr(RINKMENOS);
    if ischar(RINKMENOS);
        RINKMENOS={RINKMENOS};
    else
        return;
    end;
end;

if isempty(RINKMENOS); return; end;

f=statusbar(lokaliz('Palaukite!'));
statusbar('off',f);

for i=1:length(RINKMENOS);
    try
        if ~isempty(which('rinkmenos_tikslinimas.m'));
            [KELIAS_,Rinkmena_]=rinkmenos_tikslinimas(KELIAS,RINKMENOS{i});
        else
            [KELIAS_,Rinkmena_,galune]=fileparts(fullfile(KELIAS,RINKMENOS{i}));
            Rinkmena_=[Rinkmena_ galune];
            KELIAS_=Tikras_Kelias(KELIAS_);
        end;
        TMPEEG=[];
        TMPEEG = pop_loadset('filename',Rinkmena_,'filepath',KELIAS_,'loadmode','info');
        if ~isempty(TMPEEG);
            intervalas=[TMPEEG.xmin TMPEEG.xmax];
            trukmiu_intervalai(i,:)=intervalas;
            persidengiantis_intervalas=[...
                max(persidengiantis_intervalas(1), intervalas(1)), ...
                min(persidengiantis_intervalas(2), intervalas(2))];
            maziausia_trukme=...
                min(maziausia_trukme,intervalas(2)-intervalas(1));
        end;
    catch err;
        ar_patikrintos_visos_rinkmenos=false;
        warning(err.message);
    end;

    % statusbar
    tok=toc(tici);
    p=i/length(RINKMENOS);
    if and(tok>1,p<0.5);
        statusbar('on',f);
    end;
    if isempty(statusbar(p,f));
        break;
    end;

end;

if ishandle(f)
    delete(f);
end;