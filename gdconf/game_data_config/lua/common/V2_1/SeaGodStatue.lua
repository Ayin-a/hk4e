--[[
local statueConfig =
{
    ["Statue_Rotated1"] = {config_id = 121001,valueName = "Statue_Rotate1"},
    ["Statue_Rotated2"] = {config_id = 121001,valueName = "Statue_Rotate2"},
    ["Statue_Rotated3"] = {config_id = 121001,valueName = "Statue_Rotate3"}
}
--]]
local tempTrigger = {
    { config_id = 233001, name = "VARIABLE_CHANGE_233001", event = EventType.EVENT_VARIABLE_CHANGE,
      source = "Statue_Rotated1", condition = "", action = "action_VARIABLE_CHANGE_Special", trigger_count = 0},
    { config_id = 233002, name = "VARIABLE_CHANGE_233002", event = EventType.EVENT_VARIABLE_CHANGE,
      source = "Statue_Rotated2", condition = "", action = "action_VARIABLE_CHANGE_Special", trigger_count = 0},
    { config_id = 233003, name = "VARIABLE_CHANGE_233003", event = EventType.EVENT_VARIABLE_CHANGE,
      source = "Statue_Rotated3", condition = "", action = "action_VARIABLE_CHANGE_Special", trigger_count = 0}
}
--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        for i = 1,#suite_disk do
            table.insert(suite_disk[i].triggers, v.name)
        end
    end
    local tempStatueConfig = statueConfig["Statue_Rotated1"]
    gadgets[tempStatueConfig.config_id].server_global_value_config = {["SGV_SeaGodStatue_RotationState"] = 0}
    tempStatueConfig = statueConfig["Statue_Rotated2"]
    gadgets[tempStatueConfig.config_id].server_global_value_config = {["SGV_SeaGodStatue_RotationState"] = 0}
    tempStatueConfig = statueConfig["Statue_Rotated3"]
    gadgets[tempStatueConfig.config_id].server_global_value_config = {["SGV_SeaGodStatue_RotationState"] = 0}
    return 0
end
--------事件函数----------
function action_VARIABLE_CHANGE_Special(context, evt)
    -- 如果值为1则处理
    if(1 == evt.param1) then
        ScriptLib.PrintContextLog(context, "## TD SeaGodStatue : 尝试转动雕像")
        TrySetSeaGodStatueRotation(context,evt.source_name)
        return 0
    end
    return 0
end
--------公用函数----------
        ------------设置海神雕像转动---------
        function SetSeaGodStatueRotation(context,configId,rot)
            ScriptLib.PrintContextLog(context, "## TD SeaGodStatue : configId = "..configId .. " rot= " .. rot)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, configId, "SGV_SeaGodStatue_RotationState", rot)
            return 0
        end

        ------------尝试转动海神雕像---------
        function TrySetSeaGodStatueRotation(context,eventName)
            local configId = statueConfig[eventName].config_id
            local valueName = statueConfig[eventName].valueName
            -- 获取物件状态
            local gadgetState = ScriptLib.GetGadgetStateByConfigId(context, 0, configId)
            if( 201 == gadgetState) then
                local currentRot = ScriptLib.GetGroupVariableValue(context, valueName) + 90
                if (360 <=currentRot) then currentRot = 0 end
                ScriptLib.SetGroupVariableValue(context, valueName, currentRot)
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, configId, "SGV_SeaGodStatue_RotationState", currentRot)
                ScriptLib.PrintContextLog(context, "## TD SeaGodStatue : 尝试转动成功 configId = "..configId .. " gadgetState= " .. gadgetState .. "rot" .. currentRot)
            else
                ScriptLib.PrintContextLog(context, "## TD SeaGodStatue : 尝试转动未成功 configId = "..configId .. " gadgetState= " .. gadgetState)
            end
            -- 事件处理后归零
            ScriptLib.SetGroupVariableValue(context, eventName, 0)
            return 0
        end

--------检测函数----------

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---
