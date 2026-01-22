function TTT(position,joueur,robot)

    persistent lock1 ;
    persistent lock2 ;
    persistent lock3 ;
    persistent lock4 ;
    persistent lock5 ;
    persistent lock6 ;
    persistent lock7 ;
    persistent lock8 ;
    persistent lock9 ;
    
    if isempty(lock1)
        lock1 = 0 ;
        lock2 = 0 ;
        lock3 = 0 ;
        lock4 = 0 ;
        lock5 = 0 ;
        lock6 = 0 ;
        lock7 = 0 ;
        lock8 = 0 ;
        lock9 = 0 ;
    end
    
    if (joueur == 0)
        switch position
            case 1
                if (lock1 ~= 1)
                    rectangle('Position',[0 2 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock1 = 1 ;
                end
            case 2
                if (lock2 ~= 1)
                    rectangle('Position',[1 2 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock2 = 1 ;
                end
            case 3
                if (lock3 ~= 1)
                    rectangle('Position',[2 2 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;    
                    lock3 = 1 ;
                end
            case 4
                if (lock4 ~= 1)
                    rectangle('Position',[0 1 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock4 = 1 ;
                end
            case 5
                if (lock5 ~= 1)
                    rectangle('Position',[1 1 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock5 = 1 ;
                end
            case 6
                if (lock6 ~= 1)
                    rectangle('Position',[2 1 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock6 = 1 ;
                end
            case 7
                if (lock7 ~= 1)
                    rectangle('Position',[0 0 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock7 = 1 ;
                end
            case 8
                if (lock8 ~= 1)
                    rectangle('Position',[1 0 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock8 = 1 ;
                end
            case 9
                if (lock9 ~= 1)
                    rectangle('Position',[2 0 1 1],'FaceColor',[0 1 0],'EdgeColor','k','LineWidth',1) ;
                    lock9 = 1 ;
                end 
        end
    end
    
    if (joueur == 1)
        switch position
            case 1
                if (lock1 ~= 1)
                    rectangle('Position',[0 2 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock1 = 1 ;
                end
            case 2
                if (lock2 ~= 1)
                    rectangle('Position',[1 2 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock2 = 1 ;
                end 
            case 3
                if (lock3 ~= 1)
                    rectangle('Position',[2 2 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ; 
                    lock3 = 1 ;
                end
            case 4
                if (lock4 ~= 1)
                    rectangle('Position',[0 1 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock4 = 1 ;
                end
            case 5
                if (lock5 ~= 1)
                    rectangle('Position',[1 1 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock5 = 1 ;
                end
            case 6
                if (lock6 ~= 1)
                    rectangle('Position',[2 1 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock6 = 1 ;
                end
            case 7
                if (lock7 ~= 1)
                    rectangle('Position',[0 0 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock7 = 1 ;
                end
            case 8
                if (lock8 ~= 1)
                    rectangle('Position',[1 0 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock8 = 1 ;
                end
            case 9
                if (lock9 ~= 1)
                    rectangle('Position',[2 0 1 1],'FaceColor',[1 0 0],'EdgeColor','k','LineWidth',1) ;
                    lock9 = 1 ;
                end
         end
       
    end
    
    
end

