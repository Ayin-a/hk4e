

--score_per_monster_count = 100,    --LD配置
--score_per_distance = 1,           --LD配置
--gallery_id = 14001,               --LD配置
local paramTable_temp={
    distance = 0,
    monster_count = 0,
    final_score = 0,
    fail_reason = 0,        --[[0无原因 1挑战成功 2气球抵达终点 3主动放弃 4离开区域 5团灭 6离气球太远]]
}

local temp_Variables = {
	{ config_id=50000001,name = "GalleryStart", value = 0, no_refresh = false },
	{ config_id=50000002,name = "GalleryFinish", value = 0, no_refresh = false },
	{ config_id=50000003,name = "ADD_Gallery_monster_count", value = 0, no_refresh = false },
	{ config_id=50000004,name = "Gallery_fail_reason", value = 0, no_refresh = false },
	{ config_id=50000005,name = "GalleryStart_Success", value = 0, no_refresh = false },
}

local temp_Tirgger = {
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE",trigger_count = 0},
	{event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_EVENT_GALLERY_STOP",trigger_count = 0},
	{event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD",trigger_count = 0},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD",trigger_count = 0},
}
function action_EVENT_GROUP_WILL_UNLOAD(context,evt)
    ScriptLib.SetGroupTempValue(context,"fail_reason",3,{})
    LF_updateScore(context)
    ScriptLib.StopGallery(context, defs.gallery_id, true)
    return 0
end
function action_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_GROUP_LOAD")
	--初始化变量
	ScriptLib.SetGroupVariableValue(context,"GalleryStart_Success",0)
	ScriptLib.SetGroupVariableValue(context,"GalleryStart",0)

	return 0
end
function action_EVENT_VARIABLE_CHANGE(context,evt)
    if evt.source_name == "Gallery_fail_reason" then
        ScriptLib.SetGroupTempValue(context,"fail_reason",evt.param1,{})
        LF_updateScore(context)
        ScriptLib.StopGallery(context, defs.gallery_id, true)
    elseif  evt.source_name == "GalleryStart" and evt.param1 == 1  then
        local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid_list[1]}, "Try_Detect_Skiff", 1)	--向team发消息，等SLC
        --[[ ScriptLib.SetPlayerStartGallery(context, defs.gallery_id,{uid_list[1]})
        ScriptLib.SetGroupTempValue(context,"distance",0,{})
        ScriptLib.SetGroupTempValue(context,"monster_count",0,{})
        ScriptLib.SetGroupTempValue(context,"final_score",0,{})
        ScriptLib.SetGroupTempValue(context,"fail_reason",0,{}) ]]
    elseif  evt.source_name == "GalleryFinish" then
        LF_updateScore(context)
        ScriptLib.StopGallery(context, defs.gallery_id, false)
    elseif  evt.source_name == "ADD_Gallery_monster_count" then
        ScriptLib.SetGroupTempValue(context,"monster_count", evt.param1 + ScriptLib.GetGroupTempValue(context,"monster_count",{}),{})
        LF_updateScore(context)
    end
    return 0
end
function action_EVENT_GALLERY_STOP(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_GALLERY_STOP[is_fail]="..evt.param2.."[reason]="..evt.param3)

    local group_id = ScriptLib.GetContextGroupId(context)
    ScriptLib.RefreshGroup(context, {group_id = group_id, suite = 1})
    return 0
end




function LF_calculateScore(context)
    local fs = ScriptLib.GetGroupTempValue(context,"distance",{}) * defs.score_per_distance + ScriptLib.GetGroupTempValue(context,"monster_count",{}) * defs.score_per_monster_count
    ScriptLib.SetGroupTempValue(context,"final_score",fs,{})
    return 0
end
function LF_updateScore(context)
    local l_monster_count = ScriptLib.GetGroupTempValue(context,"monster_count",{})
    local l_fail_reason = ScriptLib.GetGroupTempValue(context,"fail_reason",{})
    ScriptLib.PrintContextLog(context,"LF_updateScore[monster_count]="..l_monster_count.."[fail_resion]="..l_fail_reason)
    uid = ScriptLib.GetSceneUidList(context)
    local paramTable = {
        ["uid"]=uid[1],
        ["monster_count"]=l_monster_count,
        ["fail_reason"]=l_fail_reason,
    }
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, paramTable)
    return 0
end

--以下为SLC

function SLC_Mark_Skiff_Suc(context)
    ScriptLib.PrintContextLog(context,"fuc[SLC_Mark_Skiff_Suc]context.uid="..context.uid)
	if ScriptLib.GetGroupVariableValue(context,"GalleryStart") == 1 then
		--开始玩法，重置计分tempValue
		ScriptLib.SetPlayerStartGallery(context, defs.gallery_id,{context.uid})
        ScriptLib.SetGroupTempValue(context,"distance",0,{})
        ScriptLib.SetGroupTempValue(context,"monster_count",0,{})
        ScriptLib.SetGroupTempValue(context,"final_score",0,{})
        ScriptLib.SetGroupTempValue(context,"fail_reason",0,{})
        --通知LD 玩法启动成功
		ScriptLib.SetGroupVariableValue(context, "GalleryStart_Success", 1)
		ScriptLib.SetGroupVariableValue(context,"GalleryStart",0)
	end
	return 0
end
function SLC_Mark_Skiff_Fail(context)
    ScriptLib.PrintContextLog(context,"fuc[SLC_Mark_Skiff_Fail]")
    ScriptLib.SetGroupVariableValue(context,"GalleryStart",0)
	return 0
end
--专项补丁：开始
--【【11.25修复】【2.4】【飞彩镌流年】打气球挑战 性能较差的设备，开启挑战后怪物会比竹筏先创建】
--https://www.tapd.cn/22963631/bugtrace/bugs/view/1122963631001308274
--通过竹筏在客户端成功创建后进行ServerLuaCall来通知lua侧创建怪物
function SLC_Raft_Created(context)
	local cfgid = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
    ScriptLib.PrintContextLog(context,"fuc[SLC_Raft_Created] | cfgid = " .. cfgid)
	if Raft_Monster_List ~= nil then
		for k , v in pairs(Raft_Monster_List) do
			if k == cfgid then 
				for i = 1 , #v do
					ScriptLib.CreateMonster(context, {config_id = v[i], delay_time = 0})
				end
			end
		end
	end
	return 0
end
function Set_Raft_SGV()
	--使玩法内的竹筏自带sgv，防止非玩法布设的竹筏也进行SLC
	if Raft_Monster_List ~= nil then
		for k,v in pairs(Raft_Monster_List) do
			for k2,v2 in pairs(gadgets) do
				if v2.config_id == k then 
					v2.server_global_value_config = {["SGV_Need_SLC"]= 1}
				end
			end
		end
	end
	return 0
end
Set_Raft_SGV()
--专项补丁：结束


function Initialize()
	--加触发器
	for k,v in pairs(temp_Tirgger) do
        v.name = k..""
        v.config_id = 9000000 + k
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--加变量
	for k,v in pairs(temp_Variables) do
		table.insert(variables,v)
	end

	return 0
end
Initialize()
