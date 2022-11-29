--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
--[[======================================
||	filename:       DeathFieldVolume
||	owner:          zijun.ma
||	description:    巨人之杯草Volume专用
||	LogName:        TD_DeathFieldVolume
||	Protection:     [Protection]
=======================================]]

local DeathFieldVolume_Trigger = {
    { config_id = 90800001, name = "CheckVolumeLoad_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "",
      condition = "", action = "action_CheckVolumeLoad", trigger_count = 0},
    { config_id = 90800002, name = "VolumeSuiteChange_DEATH_ZONE_STATUS_CHANGE", event = EventType.EVENT_DEATH_ZONE_STATUS_CHANGE, source = "",
      condition = "", action = "action_VolumeSuiteChange", trigger_count = 0},
}

function LF_Initialize_DeathFieldVolume()
    for k,v in pairs(DeathFieldVolume_Trigger) do
        table.insert(triggers, v)
    end

    LF_InsertTriggers(DeathFieldVolume_Trigger,{1})

    return 0
end

--[[=====================================
||	流程函数
--======================================]]
function action_CheckVolumeLoad(context,evt)
    -- 查询死域值并根据死域值设置LogicState
    local curDeathStatus = ScriptLib.GetDeathZoneStatus(context,0)
    ScriptLib.PrintContextLog(context, "## TD_DeathFieldVolume GroupLoad: 当前Group"..base_info.group_id.."死域状态为"..curDeathStatus)
    if 0 == curDeathStatus then
        ScriptLib.PrintContextLog(context, "## TD_DeathFieldVolume GroupLoad: 当前Group"..base_info.group_id.."已解除，但是Suite没有修改，切换Suite到2")
        ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 2 })
        return 0
    end
    return 0
end

function action_VolumeSuiteChange(context,evt)
    -- 查询死域值并根据死域值设置LogicState
    local curDeathStatus = ScriptLib.GetDeathZoneStatus(context,0)
    ScriptLib.PrintContextLog(context, "## TD_DeathFieldStandard DeathZoneChange 死域LogicState切换为" .. curDeathStatus)
    if 0 == curDeathStatus then
        ScriptLib.PrintContextLog(context, "## TD_DeathFieldVolume GroupLoad: 当前Group"..base_info.group_id.."已解除，切换Suite到2")
        ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 2 })
        return 0
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

LF_Initialize_DeathFieldVolume()
