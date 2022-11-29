--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- goto 1296.946 271.098 -1590.922
--[[======================================
||	filename:       DeathFieldAbilityGroup
||	owner:          zijun.ma
||	description:    测试死域中的AbilityGroup效果
||	LogName:        TD_DeathFieldAbilityGroup
||	Protection:     [Protection]
=======================================]]

-- 该功能仅用于模拟死域的基础感受
--[[
local DFAGConfig ={
    BasicCounter = 3,
    ExtraCounter = 0,
    Region = 33007,
    TimeAxis = {10},
}
--]]

local DeathFieldAbilityGroup_Trigger = {
    { config_id = 41000001, name = "DFAG_EnterRegion", event = EventType.EVENT_ENTER_REGION, source = "",
      condition = "", action = "action_DFAG_EnterRegion", trigger_count = 0},
    { config_id = 41000002, name = "DFAG_LeaveRegion", event = EventType.EVENT_LEAVE_REGION, source = "",
      condition = "", action = "action_DFAG_LeaveRegion", trigger_count = 0},
    { config_id = 41000003, name = "DFAG_TimeAxis", event= EventType.EVENT_TIME_AXIS_PASS, source = "StartAddCounter",
      condition = "", action = "action_DFAG_TimeAxis", trigger_count = 0 },
}

function LF_Initialize_Level()
    for k,v in pairs(DeathFieldAbilityGroup_Trigger) do
        table.insert(triggers, v)
    end
    LF_InsertTriggers(DeathFieldAbilityGroup_Trigger,{})

    return 0
end

-- 玩家进入Region后，用来上SGV的
function action_DFAG_EnterRegion(context,evt)

    if evt.param1 ~= DFAGConfig.Region then
        return 0
    end

    ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. evt.uid .. "进入死域内")
    ScriptLib.SetTeamServerGlobalValue(context, evt.uid, "SGV_DeathZone_BasicCounter", DFAGConfig.BasicCounter)
    ScriptLib.SetTeamServerGlobalValue(context, evt.uid, "SGV_DeathZone_ExtraCounter", DFAGConfig.ExtraCounter)
    -- 开启时间轴
    -- TODO 这个地方联机有Bug
    ScriptLib.InitTimeAxis(context, "StartAddCounter",DFAGConfig.TimeAxis, true)
    ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. evt.uid .. "设置其TeamSGV，并开启了时间轴增加SGV")
    return 0
end

-- 玩家离开Region后，用来清除GV
function action_DFAG_LeaveRegion(context,evt)

    if evt.param1 ~= DFAGConfig.Region then
        return 0
    end

    ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. evt.uid .. "离开死域")
    ScriptLib.SetTeamServerGlobalValue(context, evt.uid, "SGV_DeathZone_BasicCounter", 0)
    ScriptLib.SetTeamServerGlobalValue(context, evt.uid, "SGV_DeathZone_ExtraCounter", 0)
    -- 关闭时间轴
    ScriptLib.EndTimeAxis(context, "StartAddCounter")
    ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. evt.uid .. "已清除SGV并关闭时间轴")
    return 0

end

-- 每10秒增加1格死域值
function action_DFAG_TimeAxis(context,evt)

    local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. uid_list[1] .. "死域时间到！")
    local extraCounter = ScriptLib.GetTeamServerGlobalValue(context, uid_list[1], "SGV_DeathZone_ExtraCounter")
    if DFAGConfig.BasicCounter + extraCounter <= 9 then
        ScriptLib.AddTeamServerGlobalValue(context, uid_list[1], "SGV_DeathZone_ExtraCounter", 1)
        ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. uid_list[1] .. "死域附加值+1")
    else
        ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. uid_list[1] .. "死域附加值已满")
    end

    return 0
end

function SLC_ExtraAttack(context,param1)
    -- 临时增加extraLevel
    local uid_list = ScriptLib.GetSceneUidList(context)
    local extraCounter = ScriptLib.GetTeamServerGlobalValue(context, uid_list[1], "SGV_DeathZone_ExtraCounter")
    if DFAGConfig.BasicCounter + extraCounter <= 9 then
        ScriptLib.AddTeamServerGlobalValue(context, uid_list[1], "SGV_DeathZone_ExtraCounter", 1)
        ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. uid_list[1] .. "受到死域重击，死域附加值+1")
    else
        ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. uid_list[1] .. "受到死域重击，死域附加值已满")
    end
    return 0
end

function SLC_LifePointBuff(context)
    -- 临时增加extraLevel
    local uid_list = ScriptLib.GetSceneUidList(context)
    local extraCounter = ScriptLib.GetTeamServerGlobalValue(context, uid_list[1], "SGV_DeathZone_ExtraCounter")
    if extraCounter > 0 then
        ScriptLib.AddTeamServerGlobalValue(context, uid_list[1], "SGV_DeathZone_ExtraCounter", -1)
        ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. uid_list[1] .. "处于生命源质附近，死域附加值-1")
    else
        ScriptLib.PrintContextLog(context,"TD_DFAG 玩家" .. uid_list[1] .. "处于生命源质附近，死域附加值已为零")
    end

    return 0
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

LF_Initialize_Level()
