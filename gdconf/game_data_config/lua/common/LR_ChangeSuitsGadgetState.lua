


--去重随机
function LR_ChangeSuitsGadgetState(context, suite , gadgetState)

    local gadgets = suite.gadgets

    for i,v in ipairs(gadgets) do
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, v, gadgetState) then
            ScriptLib.PrintContextLog(context, "## TD_ERROR_LOG : v -> " .. v .. "//gadgetState ->" .. gadgetState)
            return -1
        end
    end

end

-- 调试代码 --
-- LR_ChangeSuitsGadgetState(context, suites[1],201)

