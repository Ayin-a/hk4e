--[[======================================
||	filename:       Activity_WindMaze
||	owner:          juntao.chen
||	description:    风场迷宫活动 基础建设，1物件逻辑响应 2 T技能公共cd实现 3 复活点
||	LogName:        Activity_WindMaze
||	Protection:     [Protection]
=======================================]]

--需求misc
--[[
    local operator_list = {
        [1] = {1,2},
}
]]
local Wind = {
    Creater_Gadget_ID = 70800246
}
local temp_Tirgger_wind = {
	{event = EventType.EVENT_GROUP_LOAD, source = "", action = "action2_EVENT_GROUP_LOAD"},
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action2_EVENT_ENTER_REGION",forbid_guest =false},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "Skill_CD", action = "action2_EVENT_TIME_AXIS_PASS_Skill_CD"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "operator_time_1", action = "action2_EVENT_TIME_AXIS_PASS_operator_time_1"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "operator_time_2", action = "action2_EVENT_TIME_AXIS_PASS_operator_time_2"},
	{event = EventType.EVENT_GALLERY_STOP, source = "", action = "action2_EVENT_GALLERY_STOP"},
    --
}
function action2_EVENT_GALLERY_STOP(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_GALLERY_STOP")
    LF_Data_Handler(context,evt.param_str1)
    return 0
end
function action2_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_ENTER_REGION")
    if revivepoint_list ~= nil then 
        for k,v in pairs(revivepoint_list) do
            if k == evt.param1 then 
                ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_ENTER_REGION:尝试设置复活点="..v)
                if ScriptLib.IsGalleryStart(context,defs.gallery_id) then
                    ScriptLib.SetGalleryRevivePoint(context, defs.gallery_id, base_info.group_id, v)
                else
                    ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_ENTER_REGION:设置复活点失败，gallery未开启"..defs.gallery_id)
                end
                return 0
            end
        end
    else
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_ENTER_REGION:没配复活点！！！=")
    end
    if transfer_list ~= nil then 
        for k,v in pairs(transfer_list) do
            if k == evt.param1 then 
                for k2,v2 in pairs(points) do
                    if v2.config_id == v then 
                        ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_ENTER_REGION:传送至复活点="..v)
                        ScriptLib.TransPlayerToPos(context, {uid_list={evt.uid}, pos=v2.pos, radius=0, rot=v2.rot})
                    end
                end
            end
        end
    else
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_ENTER_REGION:没配传送点！！！=")
    end
    return 0
end
function action2_EVENT_TIME_AXIS_PASS_operator_time_1(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_TIME_AXIS_PASS_operator_time_1")
    for k,v in pairs(operator_list) do
        local _k = ScriptLib.GetGroupTempValue(context,"operator_time_1_"..k,{})
        if _k ~= 0 then
            LF_Operate(context,k,"SGV_Switch_OnOff",1)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, "SGV_Disable", 0)
            --复原标记
            ScriptLib.SetGroupTempValue(context,"operator_time_1_"..k,0,{})
        end
    end
    return 0
end
function action2_EVENT_TIME_AXIS_PASS_operator_time_2(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_TIME_AXIS_PASS_operator_time_2")
    for k,v in pairs(operator_list) do
        local _k = ScriptLib.GetGroupTempValue(context,"operator_time_2_"..k,{})
        if _k ~= 0 then
            LF_Operate(context,k,"SGV_Switch_StrongWind",0)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, k, "SGV_Disable", 0)
            --复原标记
            ScriptLib.SetGroupTempValue(context,"operator_time_2_"..k,0,{})
        end
    end
    return 0
end
function LF_Operate(context,cfgid,sgv,value)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze LF_Operate:sgv="..sgv.."| cfgid="..cfgid.."|value="..value)
    for i = 1 ,#operator_list[cfgid] do
        for k,v in pairs(gadgets)do 
            if v.config_id == operator_list[cfgid][i] then
                if Wind.Creater_Gadget_ID == ScriptLib.GetGadgetIdByEntityId(context,ScriptLib.GetEntityIdByConfigId(context, v.config_id)) then
                    --如果是吹风机，要判断是否解锁，否则不受影响
                    if 201 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, v.config_id) then
                        ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, sgv.."", value)
                    end
                else
                    --普通气流
                    ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, sgv.."", value)
                end
            end
        end
    end
    return 0
end
function action2_EVENT_TIME_AXIS_PASS_Skill_CD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_TIME_AXIS_PASS_Skill_CD:")
    ScriptLib.SetGroupTempValue(context,"Is_Skill_CD",0,{})
    return 0
end
function action2_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze action2_EVENT_GROUP_LOAD:")
    ScriptLib.SetGroupTempValue(context,"Is_Skill_CD",0,{})
    ScriptLib.SetGroupTempValue(context,"Skill_Switch",1,{})
    --初始化数据支持变量
    ScriptLib.SetGroupTempValue(context,"data_switch_on_times",0,{})
    ScriptLib.SetGroupTempValue(context,"data_switch_off_times",0,{})
    ScriptLib.SetGroupTempValue(context,"data_direct_times",0,{})
    ScriptLib.SetGroupTempValue(context,"data_rotate_times",0,{})
    ScriptLib.SetGroupTempValue(context,"data_operator_enhence_times",0,{})
    ScriptLib.SetGroupTempValue(context,"data_operator_off_times",0,{})
    ScriptLib.SetGroupTempValue(context,"data_Tbutton_times",0,{})
    ScriptLib.SetGroupTempValue(context,"data_buff_times",0,{})
    ScriptLib.SetGroupTempValue(context,"level_5_coin_sum",0,{})
    return 0
end
function SLC_Operator_01(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Operator_01")
    local _cfgid = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
    local _k = ScriptLib.GetGroupTempValue(context,"operator_time_1_".._cfgid,{})
    if _k ~= 0 then
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Operator_01:重复交互，已拦截")
        return 0
    end
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Operator_01:".._cfgid)
    ScriptLib.SetGroupTempValue(context,"operator_time_1_".._cfgid,1,{})
    LF_Operate(context,_cfgid,"SGV_Switch_OnOff",0)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, _cfgid, "SGV_Disable", 1)
    ScriptLib.InitTimeAxis(context,"operator_time_1",{defs.operator_time_1},false)
    ScriptLib.ChangeGroupTempValue(context,"data_operator_off_times",1,{})
    return 0
end
function SLC_Operator_02(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Operator_02")
    local _cfgid = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
    local _k = ScriptLib.GetGroupTempValue(context,"operator_time_2_".._cfgid,{})
    if _k ~= 0 then
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Operator_02:重复交互，已拦截")
        return 0
    end
    ScriptLib.SetGroupTempValue(context,"operator_time_2_".._cfgid,1,{})
    LF_Operate(context,_cfgid,"SGV_Switch_StrongWind",1)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, _cfgid, "SGV_Disable", 1)
    ScriptLib.InitTimeAxis(context,"operator_time_2",{defs.operator_time_2},false)
    ScriptLib.ChangeGroupTempValue(context,"data_operator_enhence_times",1,{})
    return 0
end
function SLC_Creater_Switch_On_1(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Switch_On_1")
    ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_OnOff", 1)
    ScriptLib.ChangeGroupTempValue(context,"data_switch_on_times",1,{})
    return 0
end
function SLC_Creater_Switch_On_0(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Switch_On_0")
    ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_OnOff", 0)
    ScriptLib.ChangeGroupTempValue(context,"data_switch_off_times",1,{})
    return 0
end
function SLC_Creater_UpDown_0(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_UpDown")
    ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_UpDown", 0)
    ScriptLib.ChangeGroupTempValue(context,"data_direct_times",1,{})
    return 0
end
function SLC_Creater_UpDown_1(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_UpDown")
    ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_UpDown", 1)
    ScriptLib.ChangeGroupTempValue(context,"data_direct_times",1,{})
    return 0
end
function SLC_Creater_Dir_Clockwise(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Dir_Clockwise")
    local _cfgid = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    local _dir = ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, _cfgid, "SGV_Switch_Dir")
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Dir_Clockwise:cfgid=".._cfgid.."|_dir=".._dir)
    if _dir ==0 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 1)
    elseif _dir == 1 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 2)
    elseif _dir == 2 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 3)
    elseif _dir == 3 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 0)
    end
    ScriptLib.ChangeGroupTempValue(context,"data_rotate_times",1,{})
    return 0
end
function SLC_Creater_Dir_AntiClockwise(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Dir_AntiClockwise")
    local _cfgid = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    local _dir = ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, _cfgid, "SGV_Switch_Dir")
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Dir_AntiClockwise:cfgid=".._cfgid.."|_dir=".._dir)
    if _dir ==0 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 3)
    elseif _dir == 1 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 0)
    elseif _dir == 2 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 1)
    elseif _dir == 3 then 
        ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.source_entity_id, "SGV_Switch_Dir", 2)
    end
    ScriptLib.ChangeGroupTempValue(context,"data_rotate_times",1,{})
    return 0
end
function SLC_Creater_Dir_2(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Dir_2")
    return 0
end
function SLC_Creater_Dir_3(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Dir_3")
    return 0
end
function SLC_Creater_Dir_4(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Dir_4")
    return 0
end
function SLC_Creater_Strong(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Strong")
    return 0
end
function SLC_Creater_Normal(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Creater_Normal")
    return 0
end
function SLC_Trigger_Skill(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze SLC_Trigger_Skill:")
    local _cd = ScriptLib.GetGroupTempValue(context,"Is_Skill_CD",{})
    if _cd == 0 then
        ScriptLib.SetGroupTempValue(context,"Is_Skill_CD",1,{})
        ScriptLib.InitTimeAxis(context, "Skill_CD", {5}, false)
        local _uidlist = ScriptLib.GetSceneUidList(context)
        ScriptLib.SetTeamEntityGlobalFloatValue(context, _uidlist, "_CD_Type", 1)
        ScriptLib.ChangeGroupTempValue(context,"data_switch_on_times",1,{})
        LF_Switch(context)
    end
    if _cd == 1 then
        ScriptLib.SetTeamEntityGlobalFloatValue(context, {context.uid}, "_CD_Type", 2)
    end
    return 0
end
function LF_Switch(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze LF_Switch:")
    local _off = ScriptLib.GetGroupTempValue(context,"Skill_Switch",{})
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze LF_Switch:_off=".._off)
    if _off == 0 then 
        for k,v in pairs(gadgets) do
            if v.gadget_id == Wind.Creater_Gadget_ID then
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_Switch_StrongWind", 1)
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_Switch_OnOff", 1)
            end
        end
        ScriptLib.SetGroupTempValue(context,"Skill_Switch",1,{})
        --reminder
        ScriptLib.ShowReminder(context, 470210104)
    elseif _off == 1 then
        for k,v in pairs(gadgets) do
            if v.gadget_id == Wind.Creater_Gadget_ID then
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_Switch_OnOff", 0)
            end
        end
        ScriptLib.SetGroupTempValue(context,"Skill_Switch",0,{})
        --reminder
        ScriptLib.ShowReminder(context, 470210103)
    end
    ScriptLib.ChangeGroupTempValue(context,"data_Tbutton_times",1,{})
    return 0
end
function LF_Data_Handler(context,trans)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze LF_Data_Handler:")
    local _tab = {}
    --操作吹风机：
    _tab["switch_on_times"] = ScriptLib.GetGroupTempValue(context,"data_switch_on_times",{})
    _tab["switch_off_times"] = ScriptLib.GetGroupTempValue(context,"data_switch_off_times",{})
    _tab["direct_times"] = ScriptLib.GetGroupTempValue(context,"data_direct_times",{})
    _tab["rotate_times"] = ScriptLib.GetGroupTempValue(context,"data_rotate_times",{})
    --操作机关：
    _tab["operator_enhence_times"] = ScriptLib.GetGroupTempValue(context,"data_operator_enhence_times",{})
    _tab["operator_off_times"] = ScriptLib.GetGroupTempValue(context,"data_operator_off_times",{})
    --T键使用：
    _tab["Tbutton_times"] = ScriptLib.GetGroupTempValue(context,"data_Tbutton_times",{})
    --buff获得个数
    _tab["buff_times"] = ScriptLib.GetGroupTempValue(context,"data_buff_times",{})
    --第五关金币获得个数
    _tab["level_5_coin_sum"] = ScriptLib.GetGroupTempValue(context,"level_5_coin_sum",{})
    for k,v in pairs(_tab) do
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze LF_Data_Handler:"..k.."="..v)
    end
    ScriptLib.MarkGroupLuaAction(context, "Activitywindfield_1",trans,_tab)
    return 0
end
--初始化
function Initialize()
	--加触发器
    if temp_Tirgger_wind ~= nil then 
        for k,v in pairs(temp_Tirgger_wind) do
            v.name = v.action
            v.config_id = 40000020 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables_wind ~= nil then 
        for k,v in pairs(temp_Variables_wind) do
            v.config_id = 50000020 + k
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()