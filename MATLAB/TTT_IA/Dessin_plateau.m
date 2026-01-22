function Dessin_plateau(Tab)
for i=1:9
    if Tab(i)~=0
        switch Tab(i)
            case 1 
                if i<4
                    uicontrol('Style','pushbutton','FontSize',50, 'String','O','Position', [((i-1)*200+60) 480 100 100], 'Enable', 'inactive');
                elseif i<7
                    uicontrol('Style','pushbutton','FontSize',50, 'String','O','Position', [((i-4)*200+60) 280 100 100], 'Enable', 'inactive');
                else
                    uicontrol('Style','pushbutton','FontSize',50, 'String','O','Position', [((i-7)*200+60) 80 100 100], 'Enable', 'inactive');
                end
            case 2
                if i<4
                    uicontrol('Style','pushbutton','FontSize',50, 'String','X','Position', [((i-1)*200+60) 480 100 100], 'Enable', 'inactive');
                elseif i<7
                    uicontrol('Style','pushbutton','FontSize',50, 'String','X','Position', [((i-4)*200+60) 280 100 100], 'Enable', 'inactive');
                else
                    uicontrol('Style','pushbutton','FontSize',50, 'String','X','Position', [((i-7)*200+60) 80 100 100], 'Enable', 'inactive');
                end
        end
    end
end
end