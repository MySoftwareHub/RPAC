function Desactivation_Bouton(Tab)

for i=1:9
    if Tab(i)==0
        if i<4
            uicontrol('Style','pushbutton','String','','Position', [((i-1)*200+60) 480 100 100],'Enable', 'inactive');
        elseif i<7
            uicontrol('Style','pushbutton','String','','Position', [((i-4)*200+60) 280 100 100],'Enable', 'inactive');
        else
            uicontrol('Style','pushbutton','String','','Position', [((i-7)*200+60) 80 100 100],'Enable', 'inactive');
        end
    end
end

end
