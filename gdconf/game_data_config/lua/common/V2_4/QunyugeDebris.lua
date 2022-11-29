

local Debris_ID = 70800060
local Debris_Option_ID = 68
local temp_Variables = {
	{ config_id=50000001,name = "GalleryStart", value = 0, no_refresh = false },
	{ config_id=50000002,name = "GalleryFinish", value = 0, no_refresh = false },
	{ config_id=50000003,name = "Try_Add_Box", value = 0, no_refresh = false },
	{ config_id=50000004,name = "ADD_Gallery_monster_count", value = 0, no_refresh = false },
	{ config_id=50000005,name = "ADD_Gallery_box_count", value = 0, no_refresh = false },
	{ config_id=50000006,name = "Gallery_fail_reason", value = 0, no_refresh = false },
	{ config_id=50000007,name = "GalleryStart_Success", value = 0, no_refresh = false },
	{ config_id=50000008,name = "GalleryEnd", value = 0, no_refresh = false },
}

local temp_Tirgger = {
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "Try_Start_Challenge", condition = "", action = "action_Try_Start_Challenge",trigger_count = 0},
	{event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION",trigger_count = 0},
	{event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE",trigger_count = 0},
	{event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_EVENT_GALLERY_STOP",trigger_count = 0},
	{event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD",trigger_count = 0},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD",trigger_count = 0},
}
function action_EVENT_GROUP_WILL_UNLOAD(context,evt)
	LF_SetReason_UpdateParamTable_StopGallery(context,4)
	ScriptLib.SetGroupVariableValue(context,"GalleryEnd",1)
	return 0
end
function action_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_GROUP_LOAD")
	--初始化变量
	ScriptLib.SetGroupVariableValue(context,"GalleryStart_Success",0)
	ScriptLib.SetGroupVariableValue(context,"GalleryStart",0)
	ScriptLib.SetGroupVariableValue(context,"GalleryEnd",0)

	return 0
end
function action_EVENT_GALLERY_STOP(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_GALLERY_STOP[is_fail]="..evt.param2.."[reason]="..evt.param3)
	local uid_list = ScriptLib.GetSceneUidList(context)
    ScriptLib.PrintContextLog(context,"action_EVENT_GALLERY_STOP[uid_list[1]]="..uid_list[1])
    local group_id = ScriptLib.GetContextGroupId(context)
    ScriptLib.RefreshGroup(context, {group_id = group_id, suite = 1})
	ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid_list[1]}, "Try_Reset_Box", 1)

	return 0 
end
function action_EVENT_VARIABLE_CHANGE(context,evt)
	if evt.source_name == "GalleryStart" and evt.param1 == 1 then
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid_list[1]}, "Try_Mark_Skiff", 1)	--向team发消息，等SLC
	end
	if evt.source_name == "GalleryFinish" then
        ScriptLib.StopGallery(context, defs.gallery_id, false)
	end
	if evt.source_name == "Try_Add_Box" then 
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid_list[1]}, "Try_Add_Box", 1)
	end
	if evt.source_name == "ADD_Gallery_box_count" then 
		LF_AddBox_UpdateParamTable(context)
	end
	if evt.source_name == "ADD_Gallery_monster_count" then
		LF_AddMonster_UpdateParamTable(context)
	end
	if evt.source_name == "Gallery_fail_reason" then
		LF_SetReason_UpdateParamTable_StopGallery(context,evt.param1)
		ScriptLib.SetGroupVariableValue(context,"GalleryEnd",1)
	end

	return 0
end
function action_EVENT_GADGET_CREATE(context,evt)
	ScriptLib.PrintContextLog(context,"fuc[action_EVENT_GADGET_CREATE]1")
    if evt.param2 ~= Debris_ID then return 0 end
    ScriptLib.SetWorktopOptionsByGroupId(context, ScriptLib.GetContextGroupId(context), evt.param1, {Debris_Option_ID})

	return 0
end
function action_EVENT_SELECT_OPTION(context,evt)
	ScriptLib.PrintContextLog(context,"fuc[action_EVENT_SELECT_OPTION]")
    if ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) ~= Debris_ID then return 0 end	--判断是否箱子
	ScriptLib.PrintContextLog(context,"fuc[action_EVENT_SELECT_OPTION]suc")
	--移除箱子
	local group_id = ScriptLib.GetContextGroupId(context)
	ScriptLib.DelWorktopOptionByGroupId(context, group_id, evt.param1, Debris_Option_ID)
	ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, evt.param1, 202)
    return 0
end

function action_Try_Start_Challenge(context,evt)
    ScriptLib.PrintContextLog(context,"fuc[action_Try_Start_Challenge]")
	local uid = ScriptLib.GetSceneUidList(context)
    ScriptLib.SetTeamEntityGlobalFloatValue(context, {uid[1]}, "Try_Start_Challenge", 1)
	return 0
end

function SLC_Skiff_Die(context)
    ScriptLib.PrintContextLog(context,"fuc[SLC_Skiff_Die]")
	LF_SetReason_UpdateParamTable_StopGallery(context,2)
	ScriptLib.SetGroupVariableValue(context,"Gallery_fail_reason",2)
    return 0
end
function SLC_Mark_Skiff_Suc(context)
    ScriptLib.PrintContextLog(context,"fuc[SLC_Mark_Skiff_Suc]context.uid="..context.uid)
	if ScriptLib.GetGroupVariableValue(context,"GalleryStart") == 1 then
		--开始玩法，重置paramtable
		ScriptLib.SetGroupTempValue(context,"ParamTable_monster_count",0,{})
		ScriptLib.SetGroupTempValue(context,"ParamTable_box_count",0,{})
		ScriptLib.SetGroupTempValue(context,"ParamTable_fail_reason",0,{})

		ScriptLib.SetPlayerStartGallery(context, defs.gallery_id,{context.uid})
		LF_UpdateParamTable(context)
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
--【【11.25修复】【2.4】【飞彩镌流年】押送挑战 性能较差的设备，开启挑战后怪物会比竹筏先创建】
--https://www.tapd.cn/22963631/bugtrace/bugs/view/1122963631001308277
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

function LF_SetReason_UpdateParamTable_StopGallery(context,v)
	ScriptLib.SetGroupTempValue(context,"ParamTable_fail_reason",v,{})
	LF_UpdateParamTable(context)
	ScriptLib.StopGallery(context, defs.gallery_id, true)
	return 0
end
function LF_AddBox_UpdateParamTable(context)
	local v = ScriptLib.GetGroupTempValue(context,"ParamTable_box_count",{})
	v = v + 1
	ScriptLib.SetGroupTempValue(context,"ParamTable_box_count",v,{})
	LF_UpdateParamTable(context)
	return 0
end
function LF_AddMonster_UpdateParamTable(context)
	local v = ScriptLib.GetGroupTempValue(context,"ParamTable_monster_count",{})
	v = v + 1
	ScriptLib.SetGroupTempValue(context,"ParamTable_monster_count",v,{})
	LF_UpdateParamTable(context)
	return 0
end

function LF_UpdateParamTable(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	local monster_count = ScriptLib.GetGroupTempValue(context,"ParamTable_monster_count",{})
	local box_count = ScriptLib.GetGroupTempValue(context,"ParamTable_box_count",{})
	local fail_reason = ScriptLib.GetGroupTempValue(context,"ParamTable_fail_reason",{})
	local paramTable = {
		["uid"]=uid_list[1],
		["monster_count"]=monster_count,
		["box_count"]=box_count,
        ["fail_reason"]=fail_reason,
		["monster_count_max"]=defs.monsterTarget,
		["box_count_max"]=defs.debrisTarget,
	}
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, paramTable)
	return 0
end
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
