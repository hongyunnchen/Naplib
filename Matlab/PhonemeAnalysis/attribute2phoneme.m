function phn = attribute2phoneme (attrib,cmd,mode)
% attrib: mention the attribute to get the phonemes in this category
% cmd: use 'list' to get the name of all attributes
% mode: 'IPA' or 'Arpabet'


if ~exist('cmd','var') || isempty(cmd)
    cmd = [];
end

if ~exist('mode','var') || isempty(mode)
    mode = 'Arpabet';
end

if strcmpi(cmd,'list')
    phn = {'voiced','unvoiced','sonorant','syllabic','consonantal','approximant','plosive','fricative','nasal',...
        'strident','labial','coronal','dorsal','anterior','front','back','high','low','obstruent'};
    return;
end

if strcmp(mode,'Arpabet')
    switch lower(attrib)
        case 'voiced'
            phn = {'Z','V','DH','B','D','G','CH','JH','W','Y','L','R','M','N','NG','AA','AO','OW','AH','UH','UW','IY','IH','EY','EH','AE','AW','AY',...
                'OY','ER'};%'L','R','M','N','NG',
        case 'unvoiced'
            phn = {'TH','F','S','SH','P','T','K'};
        case 'sonorant'
            phn = {'AA','AO','OW','AH','UH','UW','IY','IH','EY','EH','AE','AW','AY',...
                'OY','W','Y','L','R','M','N','NG'};
        case 'syllabic'
            phn = {'AA','AO','OW','AH','UH','UW','IY','IH','EY','EH','AE','AW','AY',...
                'OY','ER'};
        case 'consonantal'
            phn = {'L','R','DH','TH','F','S','SH','Z','V','P','T',...
                'K','B','D','G','M','N','NG'};
        case 'approximant'
            phn = {'W','Y','L','R'};
        case 'plosive'
            phn = {'P','T','K','B','D','G'};
        case 'strident'
            phn = {'Z','S','SH'};
        case 'labial'
            phn = {'P','B','M','F','V'};
        case 'coronal'
            %phn = {'d','t','r','l','n','s','z','sh'};
            phn = {'D','T','N','S','Z'};
        case 'anterior'
            phn = {'T','D','S','Z','TH','DH','P','B','F','V','M','N','L','R'};
        case 'dorsal'
            phn = {'k','g','ng'};
            phn = {'K','G','NG','SH'};
        case 'front'
            phn = {'IY','IH','EH','AE'};
        case 'back'
            phn = {'UW','UH','AO','AA'};
        case 'high'
            phn = {'IY','IH','UH','UW'};
        case 'low'
            phn = {'EH','AE','AA','AO'};
        case 'nasal'
            phn = {'M','N','NG'};
        case 'fricative'
            phn = {'F','V','S','Z','SH','TH','DH'};%
        case 'semivowel'
            phn={'W','L','R','M','N','NG','Y'};%
        case 'obstruent'
            phn={'DH','TH','F','S','SH','Z','V','P','T',...
                'K','B','D','G'};
            
    end
elseif strcmp(mode,'Arpabet')
    
    switch lower(attrib)
        case 'voiced'
            phn = {'aa','ao','ow','axh','uxh','uw','iy','ixh','ey','eh','ae','aw','ay',...
                'oy','w','y','l','r','m','n','ng','z','v','dh','b','d','g'};
        case 'unvoiced'
            phn = {'th','f','s','sh','p','t','k'};
        case 'sonorant'
            phn = {'aa','ao','ow','axh','uxh','uw','iy','ixh','ey','eh','ae','aw','ay',...
                'oy','w','y','l','r','m','n','ng'};
        case 'syllabic'
            phn = {'aa','ao','ow','axh','uxh','uw','iy','ixh','ey','eh','ae','aw','ay',...
                'oy'};
        case 'consonantal'
            phn = {'l','r','dh','th','f','s','sh','z','v','p','t',...
                'k','b','d','g','m','n','ng'};
        case 'approximant'
            phn = {'aa','ao','ow','axh','uxh','uw','iy','ixh','ey','eh','ae','aw','ay',...
                'oy','w','y','l','r'};
        case 'plosive'
            phn = {'p','t','k','b','d','g'};
        case 'strident'
            phn = {'z','s','sh'};
        case 'labial'
            phn = {'p','b','m','f','v','w'};
            phn = {'p','b','m','f','v'};
        case 'coronal'
            phn = {'d','t','r','l','n','s','z','sh'};
            phn = {'d','t','n','s','z'};
        case 'anterior'
            phn = {'t','d','s','z','th','dh','p','b','f','v','m','n','l','r'};
        case 'dorsal'
            phn = {'k','g','ng'};
            phn = {'k','g','ng','sh'};
        case 'front'
            phn = {'iy','ixh','eh','ae'};
        case 'back'
            phn = {'uw','uxh','ao','aa'};
        case 'high'
            phn = {'iy','ixh','uxh','uw'};
        case 'low'
            phn = {'eh','ae','aa','ao'};
        case 'nasal'
            phn = {'m','n','ng'};
        case 'fricative'
            phn = {'f','v','s','z','sh','th','dh'};
    end
end
end