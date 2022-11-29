--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
--[[======================================
||	filename:       LanlaluoCommander
||	owner:          zijun.ma
||	description:    兰纳罗指挥输入
||	LogName:        TD_LanlaluoCommander
||	Protection:     [Protection]
=======================================]]

-- 特定Region或者Group可以写，每次EnterRegion会检测
--[[
local defs ={
    regionList = {123},
    -- 1,2,3,4对应4套等级
    curCommander =1,
}
--]]

local LanlaluoCommander_Trigger = {
    { keyWord = "EnterLanlaluoRegion",event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    { keyWord = "LeaveLanlaluoRegion",event = EventType.EVENT_LEAVE_REGION, source = "", trigger_count = 0},
}

function LF_Initialize_LanlaluoCommander()
    local startConfigID = 50030001
    for _,v in pairs(LanlaluoCommander_Trigger) do
        v.config_id = startConfigID
        if v.keyWordType == nil then
            v.name = "tri_" .. v.keyWord
        else
            v.name = "tri_" .. v.keyWord .. v.keyWordType
        end
        v.action = "action_" .. v.keyWord
        v.condition = ""
        startConfigID = startConfigID + 1
        table.insert(triggers, v)
    end

    LF_InsertTriggers(LanlaluoCommander_Trigger,{})

    return 0
end

--
function action_EnterLanlaluoRegion(context,evt)
    if LF_IsTargetRegion(evt.param1) then
        ScriptLib.PrintContextLog(context,"##TD_LanlaluoCommander:玩家进入合法区域")
        ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_LanlaluoCommander", defs.curCommander)
    end

    return 0
end

function action_LeaveLanlaluoRegion(context,evt)
    if LF_IsTargetRegion(evt.param1) then
        ScriptLib.PrintContextLog(context,"##TD_LanlaluoCommander:玩家离开合法区域")
        ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_LanlaluoCommander", 0)
    end

    return 0
end

--[[=====================================
||	流程函数
--======================================]]
function LF_IsTargetRegion(regionCid)
    for i = 1,#defs.regionList,1 do
        if regionCid == defs.regionList[i] then
            return true
        end
    end
    return false
end

--[[=====================================
||	常用工具包
--======================================]]

-- 标准的InsertTriggers方法
function LF_InsertTriggers(TempTrigger,TempRequireSuite)
    local hasRequireSuitList = not (TempRequireSuite == nil or #TempRequireSuite <=0)
    if hasRequireSuitList then
        if (init_config.io_type ~= 1) then
            --常规group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for k,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for k,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suite_disk) then
                        table.insert(suite_disk[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        end
    else
        --不存在白名单设置，走常规的trigger注入流程
        if (init_config.io_type ~= 1) then
            for i = 1, #suites do
                for k,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for k,v in pairs(TempTrigger) do
                    table.insert(suite_disk[i].triggers, v.name)
                end
            end
        end
    end
end
-- 简单拆分一个数组
function LF_ArrayToString(array)
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


LF_Initialize_LanlaluoCommander()
