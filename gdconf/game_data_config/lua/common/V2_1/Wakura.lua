--[[
local wakuraConfig =
{

    -- 布设时请务必保持上下Rotation相同，需要初始值不同的场合请通过GadgetState控制
    -- Index与Rotation无严格要求，务必锚定红色数字1为第一面，按照逆时钟推算Index即可
    -- 举例 上下为两个六边形，红色数字1为第一面，同时下六边形GadgetState为 203。
    -- 那么upNum从1开始依次计数。downNum也是从1开始依次计数。(在编辑器界面你无法看到下六边形转到4）
    -- 然后根据纸垂特征往右依次填数即可。

    groupId = 133217005,
    upConfig = 5004,
    downConfig = 5003,
    operatorConfig = 5005,
    upNum = {1,2,1,3,1,2}, -- 上层纸垂分布
    downNum = {2,1,1,2,3,1}, -- 下层纸垂分布
    careFaceIndex = {1,3,5}, -- 设计者关注的对应面
    targetFaceNum = {3,2,5}, -- 设计者关注的最终面的数量
    SGVList = {"SGV_Light_01","SGV_Light_02","SGV_Light_03","SGV_Light_04","SGV_Light_05","SGV_Light_06"}
}
local stateIndex ={
    [0] = {index = 1,next = 201},
    [201] ={index = 2,next = 202},
    [202] ={index = 3,next = 203},
    [203] ={index = 4,next = 204},
    [204] ={index = 5,next = 901},
    [901] ={index = 6,next = 0}
}

--]]
local tempTrigger = {
    { config_id = 2330001, name = "UpStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = tostring(wakuraConfig.upConfig),
      condition = "", action = "action_StateChangeCheck", trigger_count = 0},
    { config_id = 2330002, name = "DownStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = tostring(wakuraConfig.downConfig),
      condition = "", action = "action_StateChangeCheck", trigger_count = 0},
    { config_id = 2330003, name = "GADGET_CREATE_Operator", event = EventType.EVENT_GADGET_CREATE, source = "",
      condition = "", action = "action_GADGET_CREATE_Operator", trigger_count = 0 },
    { config_id = 2330004, name = "OperatorStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = tostring(wakuraConfig.operatorConfig),
      condition = "", action = "action_OperatorStateChange", trigger_count = 0}, -- GROUP GET_TRIGGER 133217005 OperatorStateChange
    { config_id = 2330005, name = "SELECT_OPTION_Change", event = EventType.EVENT_SELECT_OPTION, source = "",
      condition = "", action = "action_SELECT_OPTION_Change", trigger_count = 0 },
    { config_id = 2330006, name = "TIME_AXIS_PASS_ReSetWorktopOption", event = EventType.EVENT_TIME_AXIS_PASS, source = "ReSetWorktopOption",
      condition = "", action = "action_TIME_AXIS_PASS_ReSetWorktopOption", trigger_count = 0 },
}
--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        for i = 1,#suites do
            table.insert(suites[i].triggers, v.name)
        end
    end

    gadgets[wakuraConfig.upConfig].server_global_value_config = {[wakuraConfig.SGVList[1]] = 0,[wakuraConfig.SGVList[2]] = 0,[wakuraConfig.SGVList[3]] = 0,[wakuraConfig.SGVList[4]] = 0,[wakuraConfig.SGVList[5]] = 0,[wakuraConfig.SGVList[6]] = 0}
    gadgets[wakuraConfig.downConfig].server_global_value_config = {[wakuraConfig.SGVList[1]] = 0,[wakuraConfig.SGVList[2]] = 0,[wakuraConfig.SGVList[3]] = 0,[wakuraConfig.SGVList[4]] = 0,[wakuraConfig.SGVList[5]] = 0,[wakuraConfig.SGVList[6]] = 0}

    return 0
end
--------事件函数----------
-- 创建时实装操作台
function action_GADGET_CREATE_Operator(context, evt)
    if wakuraConfig.operatorConfig ~= evt.param1 then
        return 0
    end
    local operatorState = ScriptLib.GetGadgetStateByConfigId(context, 0, wakuraConfig.operatorConfig)
    if 201 == operatorState or 202 == operatorState then
        CalculateEachFaceNum(context)
    end

    return 0
end

-- 状态改变时上下操作台
function action_OperatorStateChange(context, evt)
    if 201 == evt.param1 then
        CalculateEachFaceNum(context)
    elseif 0 == evt.param1 or 202 == evt.param2 then
        ScriptLib.DelWorktopOptionByGroupId(context, wakuraConfig.groupId, wakuraConfig.operatorConfig, 89)
        ScriptLib.DelWorktopOptionByGroupId(context, wakuraConfig.groupId, wakuraConfig.operatorConfig, 90)
    end

    return 0
end

-- 转动交互流程控制(取消连续转动)
function action_SELECT_OPTION_Change(context, evt)
    if wakuraConfig.operatorConfig ~= evt.param1 and 89 ~= evt.param2 and 90 ~= evt.param2 then
        return 0
    end

    if true == ScriptLib.CheckIsInMpMode(context) then
        ScriptLib.ShowReminder(context, 321700501)
        return -1
    end

    if 89 == evt.param2 then
        ScriptLib.PrintContextLog(context, "## TD磐座 上磐座被玩家点击旋转")
        CloseAllSGVLight(context)
        ScriptLib.DelWorktopOptionByGroupId(context, wakuraConfig.groupId, wakuraConfig.operatorConfig, 89)
        ScriptLib.DelWorktopOptionByGroupId(context, wakuraConfig.groupId, wakuraConfig.operatorConfig, 90)
        local upState = ScriptLib.GetGadgetStateByConfigId(context, 0, wakuraConfig.upConfig)
        ScriptLib.SetGadgetStateByConfigId(context, wakuraConfig.upConfig, stateIndex[upState].next)
    end

    if 90 == evt.param2 then
        ScriptLib.PrintContextLog(context, "## TD磐座 下磐座被玩家点击旋转")
        CloseAllSGVLight(context)
        ScriptLib.DelWorktopOptionByGroupId(context, wakuraConfig.groupId, wakuraConfig.operatorConfig, 89)
        ScriptLib.DelWorktopOptionByGroupId(context, wakuraConfig.groupId, wakuraConfig.operatorConfig, 90)
        local downState = ScriptLib.GetGadgetStateByConfigId(context, 0, wakuraConfig.downConfig)
        ScriptLib.SetGadgetStateByConfigId(context, wakuraConfig.downConfig, stateIndex[downState].next)
    end

    return 0
end


-- 每次转动进行检测(合法的数字，需要对应亮灯)
function action_StateChangeCheck(context, evt)
    if evt.param2 == wakuraConfig.upConfig then
        ScriptLib.PrintContextLog(context, "## TD磐座 识别到上磐座发生转动")
    elseif evt.param2 == wakuraConfig.downConfig then
        ScriptLib.PrintContextLog(context, "## TD磐座 识别到下磐座发生转动")
    else
        ScriptLib.PrintContextLog(context, "## TD磐座 识别到不合法物件,其configID为" .. evt.param2)
        return -1
    end

    -- 202状态下不再设置操作台
    local operatorState = ScriptLib.GetGadgetStateByConfigId(context, 0, wakuraConfig.operatorConfig)
    if 201 == operatorState then
        ScriptLib.InitTimeAxis(context, "ReSetWorktopOption", {1}, false)
    end
    return 0
end

function action_TIME_AXIS_PASS_ReSetWorktopOption(context)
    CalculateEachFaceNum(context)
    return 0
end
--------公用函数----------
    ------------检查各个方向计数同时控制方向开关---------
    function CalculateEachFaceNum(context)
        local upState = ScriptLib.GetGadgetStateByConfigId(context, 0, wakuraConfig.upConfig)
        local downState = ScriptLib.GetGadgetStateByConfigId(context, 0, wakuraConfig.downConfig)
        local operatorState = ScriptLib.GetGadgetStateByConfigId(context, 0, wakuraConfig.operatorConfig)
        ScriptLib.PrintContextLog(context, "## TD磐座统计: ".. "上层State为 " .. upState .."，下层State为 " .. downState)
        local upIndex = stateIndex[upState].index
        local downIndex = stateIndex[downState].index
        local eachFaceNum = {0,0,0,0,0,0}
        for i = 1,6 do
            eachFaceNum[i] = wakuraConfig.upNum[getIndex(upIndex + i - 1)] + wakuraConfig.downNum[getIndex(downIndex + i - 1)]
        end
        ScriptLib.PrintContextLog(context, "## TD磐座 总计数为 : " .. arrayToString(eachFaceNum))

        local activeCount = 0
        for i = 1,#wakuraConfig.careFaceIndex do
            local targetFaceNum = wakuraConfig.targetFaceNum[i]
            local targetFaceIndex = wakuraConfig.careFaceIndex[i]
            if  targetFaceNum == eachFaceNum[targetFaceIndex] then
                ScriptLib.PrintContextLog(context, "## TD磐座 第"..targetFaceIndex.."方向符合计数要求,点亮其上下层")
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, wakuraConfig.upConfig, wakuraConfig.SGVList[getIndex(upIndex + targetFaceIndex - 1)], 1)
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, wakuraConfig.downConfig, wakuraConfig.SGVList[getIndex(downIndex + targetFaceIndex - 1)], 1)
                activeCount = activeCount + 1
            else
                ScriptLib.PrintContextLog(context, "## TD磐座 第"..targetFaceIndex.."方向不符合计数要求,关闭其上下层")
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, wakuraConfig.upConfig, wakuraConfig.SGVList[getIndex(upIndex + targetFaceIndex - 1)], 0)
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, wakuraConfig.downConfig, wakuraConfig.SGVList[getIndex(downIndex + targetFaceIndex - 1)], 0)
            end
        end

        -- 检查是否已完成
        if activeCount == #wakuraConfig.careFaceIndex and 202 ~= operatorState then
            ScriptLib.PrintContextLog(context, "## TD磐座 对应方向全部点亮。隐形操作台会被设置为202")
            ScriptLib.SetGadgetStateByConfigId(context, wakuraConfig.operatorConfig, 202)
            operatorState = 202
        end

        -- 只要状态还维持 201 就重新设置操作台
        if 201 == operatorState then
            ScriptLib.SetWorktopOptionsByGroupId(context, wakuraConfig.groupId, wakuraConfig.operatorConfig, {89,90})
        end

        ScriptLib.PrintContextLog(context, "## TD磐座 各方向处理完毕")
        return 0
    end

--------工具函数----------
    ---根据Index加算返回合适的Index---
    function getIndex(index)
        local circleNum = 6
        local curIndex = index
        if curIndex > circleNum then
            curIndex = curIndex % circleNum
            if 0 == curIndex then
                curIndex = circleNum
            end
        end
        return curIndex
    end

    ---简单拆分一个数组---
    function arrayToString(array)
        local s = "{"
        for k,v in pairs(array) do
            if k < #array then
                s = s .. v ..","
            else
                s = s .. v
            end
        end
        s = s .."}"
        return s
    end

    --- 关闭所有SGV发光 ---
    function CloseAllSGVLight(context)
        for i = 1,#wakuraConfig.SGVList do
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, wakuraConfig.upConfig, wakuraConfig.SGVList[i], 0)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, wakuraConfig.downConfig, wakuraConfig.SGVList[i], 0)
        end
        return 0
    end

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---
