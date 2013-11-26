function a = check_cell(cl, orientation)
    if cl(1) == 'L'
       if cl(2) == '0'
           ormap = [1 1 0 0];
       elseif cl(2) == '1'
           ormap = [0 1 1 0];
       elseif cl(2) == '2'
           ormap = [0 0 1 1];
       elseif cl(2) == '3'
           ormap = [1 0 0 1];
       end 
    elseif cl(1) == 'I'
       if cl(2) == '0'
           ormap = [1 0 1 0];
       elseif cl(2) == '1'
           ormap = [0 1 0 1];
       elseif cl(2) == '2'
           ormap = [1 0 1 0];
       elseif cl(2) == '3'
           ormap = [0 1 0 1];
       end 
    elseif cl(1) == 'T'
       if cl(2) == '0'
           ormap = [0 1 1 1];
       elseif cl(2) == '1'
           ormap = [1 0 1 1];
       elseif cl(2) == '2'
           ormap = [1 1 0 1];
       elseif cl(2) == '3'
           ormap = [1 1 1 0];
       end 
    elseif cl(1) == 'H'
       if cl(2) == '0'
           ormap = [1 0 0 0];
       elseif cl(2) == '1'
           ormap = [0 1 0 0];
       elseif cl(2) == '2'
           ormap = [0 0 1 0];
       elseif cl(2) == '3'
           ormap = [0 0 0 1];
       end 
    end
    a = ormap;