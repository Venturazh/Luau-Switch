local module = {}

function module:switch(object : number | {number} ,cases : {number}) : (number, {number})
    if typeof(object) == "table" then
        for case_key, case_value in pairs(cases) do
            for enum_key, enum_value in pairs(object) do
                for inside_key, inside_value in pairs(case_value) do
                    if enum_value == inside_value then
                        case_value.func()
                        return
                    end
                end
            end    
        end
    else
        for case_key, case_value in pairs(cases) do
            for inside_key, inside_value in pairs(case_value) do
                if object == inside_value then
                    case_value.func()
                    return
                end
            end
        end
    end
end

return module
