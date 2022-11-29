--[[======================================
||	filename:       Activity_Hunt_Stage_1
||	owner:          juntao.chen
||	description:    营地挑战玩法
||	LogName:        Activity_Hunt_Stage_1
||	Protection:     [Protection]
=======================================]]

--需求defs
--[[
    local defs = {
        gallery_id = 111,
        region = 111
    }
]]
--[[ 一阶段：
胆小型野猪：add_timid_cnt
野蛮型野猪：add_brutal_cnt
精英野猪：add_elite_cnt

二阶段：
monster_id
left_num
total_num ]]

local stage_2_group_id = 133002100
local temp_Variables = {--已自动添加config_id
	{  name = "gm_Try_End", value = 0, no_refresh = false },
	{  name = "gm_Try_Start", value = 0, no_refresh = false },
    --一阶段
	{  name = "add_timid_cnt", value = 0, no_refresh = false },
	{  name = "add_brutal_cnt", value = 0, no_refresh = false },
	{  name = "add_elite_cnt", value = 0, no_refresh = false },
    --二阶段
	{  name = "left_num", value = 0, no_refresh = false },
	{  name = "total_num", value = 0, no_refresh = false },
	{  name = "monster_id", value = 0, no_refresh = false },
	{  name = "monster_id_sneak", value = 0, no_refresh = false },
	{  name = "Stage_2_Monster_Count", value = 0, no_refresh = false },--仅策划用
    --三阶段
	{  name = "is_finish", value = 0, no_refresh = false },
	{  name = "go_weak", value = 0, no_refresh = false },
}
local temp_Tirgger = {
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", action = "action_EVENT_VARIABLE_CHANGE"},
	{event = EventType.EVENT_GALLERY_START, source = "", action = "action_EVENT_GALLERY_START"},
	{event = EventType.EVENT_GROUP_REFRESH, source = "", action = "action_EVENT_GROUP_REFRESH"},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", action = "action_EVENT_GROUP_WILL_UNLOAD"},
	{event = EventType.EVENT_LEAVE_REGION, source = "", action = "action_EVENT_LEAVE_REGION"},
	{event = EventType.EVENT_GALLERY_STOP, source = "", action = "action_EVENT_GALLERY_STOP"},
}
function action_EVENT_GALLERY_STOP(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_GALLERY_STOP:evt.param1="..evt.param1)
    local _uidlist = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerGroupVisionType(context, _uidlist, {1})
    return 0
end
function action_EVENT_LEAVE_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_LEAVE_REGION:evt.param1="..evt.param1)
    if ScriptLib.IsGalleryStart(context, defs.gallery_id) and evt.param1 == defs.region then
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_LEAVE_REGION:StopGalleryByReason")
        ScriptLib.StopGalleryByReason(context, defs.gallery_id, 5)
    end
    return 0
end
function action_EVENT_GROUP_WILL_UNLOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_GROUP_WILL_UNLOAD")
    return 0
end
function action_EVENT_GROUP_REFRESH(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_GROUP_REFRESH")

    return 0
end
function action_EVENT_GALLERY_START(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_GALLERY_START:2022_6_21_205629")
    if base_info.group_id == stage_2_group_id then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{["total_num"] = defs.stage_2_goal})
        ScriptLib.SetGroupVariableValue(context, "Stage_2_Monster_Count", 0)
        local _uid = ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.SetTeamServerGlobalValue(context, _uid, "SGV_CUR_STAGE", 2)
    else
        local _uid = ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.SetTeamServerGlobalValue(context, _uid, "SGV_CUR_STAGE", 0)
    end
    return 0
end
function action_EVENT_VARIABLE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_VARIABLE_CHANGE:evt.source_name = ".. evt.source_name.."| value = "..evt.param1)
    --还是判一下name，避免发无用key到gallery上
    if evt.source_name == "add_timid_cnt" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    if evt.source_name == "add_brutal_cnt" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    if evt.source_name == "add_elite_cnt" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    if evt.source_name == "left_num" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    if evt.source_name == "total_num" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    if evt.source_name == "monster_id" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    if evt.source_name == "monster_id_sneak" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{["monster_id"] = evt.param1,["sneak_count"] = 1})
    end
    if evt.source_name == "is_finish" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    if evt.source_name == "go_weak" then
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    --二阶段抓到动物后 判断是否完成
    if evt.source_name == "Stage_2_Monster_Count" then
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 action_EVENT_VARIABLE_CHANGE1:defs.stage_2_goal="..defs.stage_2_goal)
        if evt.param1 >= defs.stage_2_goal then 
            ScriptLib.StopGallery(context, 27002, false)
        end
    end
    return 0
end
function LF_Try_Start(context)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_1 LF_Try_Start:")
    return 0
end
function SLC_onStageReady(context)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 SLC_onStageReady:")
    ScriptLib.SetGroupVariableValueByGroup(context,"start", 1,133002075)
    return 0
end
--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = v.action
            v.config_id = 40000000 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables ~= nil then 
        for k,v in pairs(temp_Variables) do
            v.config_id = 50000000 + k
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()