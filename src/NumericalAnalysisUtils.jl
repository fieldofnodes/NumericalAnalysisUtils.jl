module NumericalAnalysisUtils

    using Statistics

    export
        one_half_slope_line,
        find_intersection_index,
        find_intersection_indices,
        get_relative_error,
        opt_intercept,
        mn_sq_dis

    function one_half_slope_line(x,b) 
        (0.5 .* x) .+ b
    end

    function find_intersection_indices(line_1,line_2)
        difference_lines = abs.(line_1 .- line_2) 
        min_diff = minimum(difference_lines)
        inter = findall(x->x == min_diff,difference_lines)
        inter
    end

    function get_relative_error(x₀,x)
        abs(x₀-x)/x₀
    end 

    opt_intercept(intercept) = one_half_slope_line(log_data_boundary,intercept)

    function mn_sq_dis(y₁,y₂) 
        diffe = y₂ .- y₁ 
        sq_diffe = diffe .^2
        mean(sq_diffe)
    end
end