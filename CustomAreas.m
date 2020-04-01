%CustomAreas.m
%
%Custom Areas - sum up cases to create/plot one or more custom areas
%define number of separate custom areas, 9 max.  Also see READ_ME.txt &
%'InputVars.m' for more info about fips & variable conventions.

n_areas = 2       %Number of custom areas to be summed and plotted
areas_states = zeros(n_areas,78);      %Allocate state/name arrays.
areas_name = strings(1,n_areas);       %Don't touch these.

%custom area 1
%put fips numbers for states to be summed in 1xN arrays to a max of N=78
%numbers in variable names must be consistent with n_cst_areas
area_1_states = [02 41 53] ;         %States to sum, here it's AK + WA + OR
areas_name(1) = 'Pacific NW';        %name in string format, change index as needed
area_size = size(area_1_states,2);   %change # in area_#_states here if needed
naughts = 78-area_size;              %Don't touch this, either
area_temp = padarray(area_1_states,[0 naughts],0,'post'); %change area_# here too
areas_states(1,:) = area_temp;       % change area_states(#,:) as needed   

%custom area 2
area_2_states = [09 34 36];         %This one's NY + NJ + CT
areas_name(2) = 'NYC Metro';
area_size = size(area_2_states,2);   
naughts = 78-area_size;              
area_temp = padarray(area_2_states,[0 naughts],0,'post');
areas_states(2,:) = area_temp;

%rinse, repeat as needed...
