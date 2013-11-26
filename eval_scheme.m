function res  = eval_scheme(scheme)
res = 0;
for i = 1:size(scheme,1)
    for j = 1:size(scheme,2)
        curcell = check_cell(scheme{i,j});
        if i == 1
            upcell = [0 0 0 0];
        else
            upcell = check_cell(scheme{i-1,j});
        end
        if i == size(scheme,1)
            downcell = [0 0 0 0];
        else
            downcell = check_cell(scheme{i + 1,j});
        end
        if j == 1
            leftcell = [0 0 0 0];
        else
            leftcell = check_cell(scheme{i,j-1});
        end
        if j == size(scheme,2)
            rightcell = [0 0 0 0];
        else
            rightcell = check_cell(scheme{i,j+1});
        end
        local_eval = 0;
        if curcell(1) == 1
            local_eval = local_eval + upcell(3);
        end
        if curcell(2) == 1
            local_eval = local_eval + rightcell(4);
        end
        if curcell(3) == 1
            local_eval = local_eval + downcell(1);
        end
        if curcell(4) == 1
            local_eval = local_eval + leftcell(2);
        end
        %Side penalty
        if (curcell(1) == 1) && (i == 1)
            local_eval = 0;
        end
        if (curcell(3) == 1) && (i == size(scheme, 1))
            local_eval = 0;
        end
        if (curcell(4) == 1) && (j == 1)
            local_eval = 0;
        end
        if (curcell(2) == 1) && (j == size(scheme, 2))
            local_eval = 0;
        end
        res = res + local_eval;
    end
end