--
--
-- ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗  █████╗ ██████╗ ██████╗
-- ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██╔══██╗
-- ██║  ██║███████║███████╗███████║██████╔╝██║   ██║███████║██████╔╝██║  ██║
-- ██║  ██║██╔══██║╚════██║██╔══██║██╔══██╗██║   ██║██╔══██║██╔══██╗██║  ██║
-- ██████╔╝██║  ██║███████║██║  ██║██████╔╝╚██████╔╝██║  ██║██║  ██║██████╔╝
-- ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝
--
--


local cmd = vim.cmd

-- Override the default fuzzy finder for the dashboard
vim.cmd [[ let g:dashboard_default_executive = 'telescope' ]]


-- Change the banner
vim.cmd [[ let g:dashboard_custom_header = [
    \'      %&                       %       ',
    \'     %%                        %%      ',
    \'     %%                        %%%     ',
    \'    %%&                        %%%     ',
    \'    %%&&                       %&%     ',
    \'     %&&%                     %%%#     ',
    \'     %%%%%                   %%%%      ',
    \'      ,%%%%(   ## ##   #   %%##*       ',
    \'       %%%%########%%#%######%%%       ',
    \'        %&%.%#%(###/%###%#%/%%%        ',
    \'       %%%%.%%(#(/#,,((%(%%%##%%       ',
    \'        #%&..///*((/(/*///(.&(%        ',
    \'        ...%///*/*/* *////(.%&         ',
    \'      ..,%&#%*/%%#%%%%%#/*#(  .        ',
    \'      ,./%%%%%(/##%%%##(###%%%         ',
    \'       ../*,,,,/#*#&#/%##,***   .      ',
    \'       %&%./#..,*%#%(//*. /(. %#       ',
    \'        %%#% %%(,%****#/%(,(%##        ',
    \'          #    %(##&##((%              ',
    \'                %.(%(#.,               ',
    \'                *  %# (.               ',
    \'                   &                   ',
\] ]]
