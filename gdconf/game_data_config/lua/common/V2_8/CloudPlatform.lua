--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---

--[[======================================
||	filename:	CloudPlatform
||	owner: 		weiwei.sun
||	description: 	2.8踩亮云平台逻辑。分段加载、卸载
||	LogName:	## [CloudPlatform]
||	Protection:	
=======================================]]
--[[

local defs = {
	stages = 
	{
		--key为第几段，value1为这一段的起点suite，value2为这一段的主体suite
		--这些suite里不要放台子以外的gadget, 不要有InitSuite
		[1] = { 1, 2 },
	},
	--判断玩家掉落region的在哪个suite里
	--这个suite会在踩了第一个起点后加载，在失败和成功时移除
	region_suite = ,
	--玩法完成时，goto哪个suite
	end_suite = ,
    --防跳水板子config_id
    board_id = ,
    --防跳水板子config_id list
    board_id_list = {},
}

]]

local Triggers = {
	{ config_id = 8000001, name = "Tile_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Tile_State_Change", trigger_count = 0 },
	{ config_id = 8000002, name = "FallDown_Leave_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_FallDown_Leave_Region", trigger_count = 0, forbid_guest = false},
	{ config_id = 8000003, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
	
}

function LF_Initialize_Group(triggers, suites)

	for i=1, #Triggers do
		table.insert(triggers, Triggers[i])
		table.insert(suites[init_config.suite].triggers,Triggers[i].name)
	end

end

function action_Group_Load(context, evt)
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.stages[1][1])
	ScriptLib.SetGroupTempValue(context,"stage_index", 1, {})
	LF_UnLoadAntiDivingBoard(context)

	return 0
end

function LF_KillSuiteGadgets(context, suite)
	for k,v in pairs(suites[suite].gadgets) do
		ScriptLib.KillEntityByConfigId(context, { config_id = v })
	end
	return 0
end

function action_Tile_State_Change(context, evt)
	--只监听踩亮
	if 201 ~= evt.param1 then
		return 0
	end

	--取得当前在第几段
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})

	--踩亮的是起点格,则加载对应的主体suite
	local starter_gadget_table = suites[defs.stages[stage_index][1]].gadgets

	if LF_CheckIsInTable(context, evt.param2, starter_gadget_table) then

		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.stages[stage_index][2])

		--移除上一阶段的主体suite和起点suite
		if 1 < stage_index then
			--ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.stages[stage_index - 1][1])
			--ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.stages[stage_index - 1][2])
			--迭代为Kill
			LF_KillSuiteGadgets(context, defs.stages[stage_index - 1][1]) 
			LF_KillSuiteGadgets(context, defs.stages[stage_index - 1][2]) 
			
		elseif 1 == stage_index then
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.region_suite)

			LF_LoadAntiDivingBoard(context)
			LF_TryShowGuide(context)
		end

	--否则是主体里面的格子，检查stage是否完成
	else

		 if LF_CheckStageSuccess(context, stage_index) then

		 	if LF_CheckIsFinalStage(context) then 

		 		ScriptLib.GoToGroupSuite(context, base_info.group_id, defs.end_suite)

				LF_UnLoadAntiDivingBoard(context)
				--埋点
				ScriptLib.MarkGroupLuaAction(context, "CloudPlatform", "", {["group_id"] = base_info.group_id, ["result"] = 1})	

		 	else
		 		--当前主体格全部锁定
		 		LF_LockAllGadgets(context, stage_index)
		 		--更新阶段
		 		ScriptLib.SetGroupTempValue(context, "stage_index", stage_index + 1, {})
		 		--加载下一阶段的起点suite
		 		local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
		 		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.stages[stage_index][1])

		 	end

		 end

	end

	return 0
end

--是否全部玩家离开Region
function LF_Check_AllPlayer_OutRegion(context, region_id)

	local eid = ScriptLib.GetEntityIdByConfigId(context, region_id)

	local count = ScriptLib.GetRegionEntityCount(context, { region_eid = eid, entity_type = EntityType.AVATAR })

	ScriptLib.PrintContextLog(context, "## [CloudPlatform] Count player in region: regionID@"..region_id.. " playerCount@".. count)

	if count < 1 then	
		return true
	end	
	return false
end

--当前主体格、起点格全部切至202
function LF_LockAllGadgets(context, stage_index)

	ScriptLib.PrintContextLog(context, "## [CloudPlatform] LF_LockAllGadgets. stage_index@"..stage_index)

	local tile_gadget_table = suites[defs.stages[stage_index][2]].gadgets
	for k,v in pairs(tile_gadget_table) do
		ScriptLib.SetGadgetStateByConfigId(context, v, 202)
	end

	local starter_gadget_table = suites[defs.stages[stage_index][1]].gadgets
	ScriptLib.SetGadgetStateByConfigId(context, starter_gadget_table[1], 202)

	return 0
end

--检查是否完成当前stage的格子
function LF_CheckStageSuccess(context, stage_index)

	ScriptLib.PrintContextLog(context, "## [CloudPlatform] LF_CheckStageSuccess. stage_index@"..stage_index)
	--检查当前阶段的主体suite内gadgetstate是否均为201
	local tile_gadget_table = suites[defs.stages[stage_index][2]].gadgets
	for k,v in pairs(tile_gadget_table) do
		if 201 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, v) then 
			ScriptLib.PrintContextLog(context, "## [CloudPlatform] LF_CheckStageSuccess return false. gadget@"..v)
			return false
		end
	end
	ScriptLib.PrintContextLog(context, "## [CloudPlatform] LF_CheckStageSuccess return true.")
	return true
end

--检查当前stage是否为最后一个
function LF_CheckIsFinalStage(context)

	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})

	ScriptLib.PrintContextLog(context, "## [CloudPlatform] LF_CheckIsFinalStage. stage_index@"..stage_index.." total stages@"..#defs.stages)

	if stage_index >= #defs.stages then 
		return true
	end

	return false
end

function action_FallDown_Leave_Region(context, evt)
	ScriptLib.PrintContextLog(context, "## [CloudPlatform] Player falled down. uid@"..evt.uid)
	if LF_Check_AllPlayer_OutRegion(context, evt.param1) then 
		--埋点
		ScriptLib.MarkGroupLuaAction(context, "CloudPlatform", "", {["group_id"] = base_info.group_id, ["result"] = 2})	

		ScriptLib.RefreshGroup(context, { group_id = 0, suite = 1 })
		ScriptLib.SetGroupTempValue(context,"stage_index", 1, {})
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.stages[1][1])

	end
	return 0
end

--用于检查value是否在目标table中
function LF_CheckIsInTable(context, value, check_table)

	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

function LF_UnLoadAntiDivingBoard(context)
	if nil ~= defs.board_id then 
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.board_id })
	end
	if nil ~= defs.board_id_list then 
		for k,v in pairs(defs.board_id_list) do 
			ScriptLib.KillEntityByConfigId(context, { config_id = v })
		end
	end
	return 0
end

function LF_LoadAntiDivingBoard(context)
		if nil ~= defs.board_id then 
			ScriptLib.CreateGadget(context, { config_id = defs.board_id })
		end
	if nil ~= defs.board_id_list then 
		for k,v in pairs(defs.board_id_list) do 
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	end
	return 0
end

function LF_TryShowGuide(context)
	--在NewActivityPushTipsData配置中查找对应id, 并通过lua添加进活动中
	--重复添加已有push tips返回-1 成功添加返回0
	local ret = ScriptLib.TryRecordActivityPushTips(context, 2014001)
	if 0 == ret then
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.ShowClientTutorial(context, 1167, uid_list)
	end
	return 0
end
LF_Initialize_Group(triggers, suites)