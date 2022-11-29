--[[
local defs = {
	--开启操作台configID
	starter_gadget = ,
	--终点Region的ConfigID
	end_region = ,
	--限定region的configID
	play_region = ,
	--限定region所在suite
	play_region_suite = ,
	--gallery_id
	gallery_id = ,

	--计数定义。
	--这个赛道中，每种行为写入哪个param
	--行为：1-持续加速20秒 2-障碍破坏 3-（未定义）
	counter = 
	{ 
		["param1"] = 2,
		["param2"] = 0,
		["param3"] = 0,
	},

	father_challenge = 父挑战挑战ID,

	child_time_challenge = 
	{
		{challenge_id = 计时挑战1挑战ID, aim = 时间限制秒},
		{challenge_id = 计时挑战2挑战ID, aim = 时间限制秒},
	},

	child_count_challenge = 
	{
		{challenge_id = 计数挑战1挑战ID, aim = 目标数},
	},
}
]]--
local cfg = {
	--开启挑战选项id
	start_option = 175,
	--父挑战ID
	challenge_id = 2018,
	--子挑战1 ID
	child_1 = 2019,
	--子挑战2 ID
	child_2 = 2020,
	--子挑战3 ID
	child_3 = 2021,

	--隐藏子挑战 ID
	child_end = 2022,

	--父挑战总限时
	total_time = 9999,

	--赛道和陈列室对应
    exhiKey_all ={
        [199003065] = {"Activity_SummerTimeV2_BoatRace_L1_Count1","Activity_SummerTimeV2_BoatRace_L1_Count2"},
        [199004061] = {"Activity_SummerTimeV2_BoatRace_L2_Count1"},
        [199003025] = {"Activity_SummerTimeV2_BoatRace_L3_Count1"},
        [199001094] = {"Activity_SummerTimeV2_BoatRace_L4_Count1"},
        [199001098] = {"Activity_SummerTimeV2_BoatRace_L5_Count1"},
        [199002079] = {"Activity_SummerTimeV2_BoatRace_L6_Count1"},
    }
}

local extraTriggers = {
	{ config_id = 8000001, name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "",condition = "",action = "action_Challenge_Success",trigger_count= 0},
	{ config_id = 8000002, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "",condition = "",action = "action_Challenge_Fail",trigger_count= 0},
	{ config_id = 8000003, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "",condition = "",action = "action_Gallery_Stop",trigger_count= 0},

	{ config_id = 8000004, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_Option", trigger_count = 0 },
	{ config_id = 8000005, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_Group_Will_Unload", trigger_count = 0 },
	{ config_id = 8000006, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
	{ config_id = 8000007, name = "Enter_Final_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_Enter_Final_Region", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 8000008, name = "Leave_Play_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Leave_Play_Region", trigger_count = 0 },
	--挑战计数项
	{ config_id = 8000009, name = "Counter_Variable_Change_1", event = EventType.EVENT_VARIABLE_CHANGE, source = "counter_1", condition = "", action = "", trigger_count = 0 , tag = "1" },
	{ config_id = 8000010, name = "Counter_Variable_Change_2", event = EventType.EVENT_VARIABLE_CHANGE, source = "counter_2", condition = "", action = "", trigger_count = 0 , tag = "2" },
	{ config_id = 8000011, name = "Counter_Variable_Change_3", event = EventType.EVENT_VARIABLE_CHANGE, source = "counter_3", condition = "", action = "", trigger_count = 0 , tag = "3" },
	--进入隐藏道路计数
	{ config_id = 8000012, name = "Enter_Hiden_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Hiden_Region", trigger_count = 0 },
	--教学圈
	{ config_id = 8000013, name = "Enter_Tutorial_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Tutorial_Region", trigger_count = 0 },
}

function Initialize()
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001, name = "counter_1", value = 0})
	table.insert(variables,{ config_id = 50000002, name = "counter_2", value = 0})
	table.insert(variables,{ config_id = 50000003, name = "counter_3", value = 0})
	return 0
end

--机关开启条件及开启处理
function action_Select_Option(context, evt)
	if defs.starter_gadget ~= evt.param1 or cfg.start_option ~= evt.param2 then
		return 0	
	end
	--检查玩家处于开船状态
	if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	    ScriptLib.ShowReminder(context, 400041)
	    ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Player not in boat.")
	    return 0
	end
	--检查联机状态
	if true == ScriptLib.CheckIsInMpMode(context) then
		ScriptLib.ShowReminder(context, 400053)
		ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Player in MP mode.")
		return 0
	end
	--检查赛船挑战开启状态
	if ScriptLib.IsChallengeStartedByChallengeId(context, cfg.challenge_id) then
		ScriptLib.ShowReminder(context, 400046)
		ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Boat race has started.")
		return 0
	end
	--清空陈列室
	for k, v in pairs(cfg.exhiKey_all[base_info.group_id]) do
		ScriptLib.ClearExhibitionReplaceableData(context, context.uid, v)
	end
	ScriptLib.SetGroupTempValue(context, "exhi_counter_1", 0, {})
	ScriptLib.SetGroupTempValue(context, "exhi_counter_2", 0, {})
	ScriptLib.SetGroupTempValue(context, "exhi_counter_3", 0, {})

	--开启挑战
	ScriptLib.CreateFatherChallenge(context, cfg.challenge_id, cfg.challenge_id, cfg.total_time, {success = 10, fail = 5})
	ScriptLib.StartFatherChallenge(context, cfg.challenge_id)

	--填加计时类子挑战
	for k,v in pairs(defs.child_time_challenge) do 
		ScriptLib.AttachChildChallenge(context, cfg.challenge_id, v.challenge_id*10 + k, v.challenge_id, { v.aim, 4, 666, 1},{},{success = 10,fail = 0})
	end
	--填加计数类子挑战
	for k,v in pairs(defs.child_count_challenge) do 
		--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.AttachChildChallenge(context, cfg.challenge_id, v.challenge_id*10 + k, v.challenge_id, { 3, k, v.aim},{},{success = 0,fail = 0}) 
		ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Challenge started. start galleryID@"..defs.gallery_id.." father_challengeID@"..cfg.challenge_id)
	end
	--不限时抵达终点隐藏挑战
	ScriptLib.AttachChildChallenge(context, cfg.challenge_id, cfg.child_end, cfg.child_end, { 4, 666, 1, 1},{},{success = 10,fail = 0})

	--处理操作台
	ScriptLib.SetGadgetStateByConfigId(context,  defs.starter_gadget, GadgetState.GearStart) 
	ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.starter_gadget, cfg.start_option) 

	--开Gallery
	ScriptLib.StartGallery(context, defs.gallery_id)

	--添加region
	if nil ~= defs.play_region_suite then
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.play_region_suite)
	end
	-- 添加suite2内容
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)

	--处理VisionType
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	ScriptLib.ForbidPlayerRegionVision(context, context.uid)

	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Challenge started. start galleryID@"..defs.gallery_id.." father_challengeID@"..cfg.challenge_id)

	return 0
end

function action_Enter_Tutorial_Region(context, evt)
	if nil == defs.guide_region then
		return 0 
	end
	if evt.param1 ~= defs.guide_region then
		return 0 
	end
	LF_TryShowGuide(context)
	return 0
end

-- 处理成功
function action_Challenge_Success(context, evt)

	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Challenge success.")	
	if evt.param1 ~= cfg.challenge_id then
		return 0
	end
	local uid = ScriptLib.GetSceneOwnerUid(context)
	LF_ReportSkillExhibition(context, uid)

	local time = cfg.total_time - evt.param2
	if time > 0 then 
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { ["time"]= time, ["uid"] = uid })
	else
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { ["time"]= 0, ["uid"] = uid })
		ScriptLib.PrintContextLog(context, "## [BoatRaceV2] #WARN# Get unexpected time usage.")
	end
	
	ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })

	--设置操作台选项
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter_gadget, {cfg.start_option})
	--结束Gallery
	ScriptLib.StopGallery(context, defs.gallery_id, false)

	return 0
end

-- 处理挑战失败(超时、Group卸载、P键)
function action_Challenge_Fail(context, evt)
	if evt.param1 ~= cfg.challenge_id then
		return -1
	end

	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Challenge failed.")

	local uid = ScriptLib.GetSceneOwnerUid(context)

	local time = cfg.total_time - evt.param2
	if time > 0 then 
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { ["time"]= time, ["uid"] = uid  })
	else
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { ["time"]= 0, ["uid"] = uid })
		ScriptLib.PrintContextLog(context, "## [BoatRaceV2] #WARN# Get unexpected time usage.")
	end

	ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })

	--设置操作台选项
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter_gadget, {cfg.start_option})
	--结束Gallery
	ScriptLib.StopGallery(context, defs.gallery_id, true)

	return 0
end

-- Gallery结束
function action_Gallery_Stop(context, evt)
	--恢复VisionType
	local uid = ScriptLib.GetSceneOwnerUid(context)
	ScriptLib.SetPlayerGroupVisionType(context, {uid}, {1})
	ScriptLib.RevertPlayerRegionVision(context, uid)
	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Gallery stoped. is_fail@"..evt.param2.." reason@"..evt.param3)

	--挑战计数重置
	ScriptLib.SetGroupVariableValue(context, "counter_1", 0)
	ScriptLib.SetGroupVariableValue(context, "counter_2", 0)
	ScriptLib.SetGroupVariableValue(context, "counter_3", 0)
	return 0
end

-- 进入最终区域
function condition_Enter_Final_Region(context, evt)
	-- 判断角色数量不少于1
	if evt.param1 ~= defs.end_region then 
		return false
	end
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	return true
end

--处理Group重载
function action_Group_Load( context,evt )
	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Group load.")
	ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = init_config.suite })
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter_gadget, {cfg.start_option})
	return 0
end

function action_Group_Will_Unload( context,evt )
	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Group will unload.")
	ScriptLib.StopChallenge(context, cfg.challenge_id, 0)
	return 0
end

function action_Leave_Play_Region(context, evt)
	if defs.play_region ~= evt.param1 then 
		return 0
	end
	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Player leave play region.")
	ScriptLib.StopChallenge(context, cfg.challenge_id, 0)
	return 0
end
--陈列室上传
function LF_ReportSkillExhibition(context, uid)

    for i, v in ipairs(cfg.exhiKey_all[base_info.group_id]) do
        local record = ScriptLib.GetGroupTempValue(context, "exhi_counter_"..i, {})
        ScriptLib.PrintContextLog(context, "## [BoatRaceV2] LF_ReportSkillExhibition. exhi_counter_"..i.. "record@"..record)
        if 0 < record then 
        	ScriptLib.AddExhibitionReplaceableData(context, uid, v, record)
        end
    end
    return 0
end

function LF_GetGalleryParamName(context, type)
	for k,v in pairs(defs.counter) do 
		if v == type then
			return k
		end
	end
	return 0
end

--type：1-冲刺20秒 2-障碍破坏 3-(未定义) 4-冲刺时吸
function SLC_BoatRaceV2_Counter(context, type)

	ScriptLib.PrintContextLog(context, "## [BoatRaceV2] SLC_BoatRaceV2_Counter. type@"..type)

	--确认是要加本赛道gallery的哪个param
	local gallery_param = LF_GetGalleryParamName(context, type)
	if 0 == gallery_param then 
		return 0
	end

	--如果是物件破坏，看是否在计数白名单内
	if 2 == type then 
		if nil ~= defs.gadget_filter then
			local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
			local gadget_id = gadgets[config_id].gadget_id

			if LF_CheckIsInTable(context, gadget_id, defs.gadget_filter) then 
				ScriptLib.PrintContextLog(context, "## [BoatRaceV2] SLC_BoatRaceV2_Counter. Count gadget. config_id@"..config_id.." gadget_id@"..gadget_id)
			else
				return 0
			end
		end
	end
	
	--update gallery
	if 0 ~= gallery_param then
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { [gallery_param]= 1 , ["uid"] = ScriptLib.GetSceneOwnerUid(context)})
		ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Update gallery. param@"..gallery_param)
	end	

	--设置陈列室缓存、触发挑战计数
	if "param1" == gallery_param then 
		ScriptLib.ChangeGroupTempValue(context, "exhi_counter_1", 1, {})
		ScriptLib.ChangeGroupVariableValue(context, "counter_1", 1)
	elseif "param2" == gallery_param then 
		ScriptLib.ChangeGroupTempValue(context, "exhi_counter_2", 1, {})
		ScriptLib.ChangeGroupVariableValue(context, "counter_2", 1)
	elseif "param3" == gallery_param then 
		ScriptLib.ChangeGroupTempValue(context, "exhi_counter_3", 1, {})
		ScriptLib.ChangeGroupVariableValue(context, "counter_3", 1)
	end
	return 0
end
--进入隐藏赛道的计数
function action_Enter_Hiden_Region(context, evt)
	if nil == defs.hiden_region then 
		return 0
	end
	--是否是指定region
	if LF_CheckIsInTable(context, evt.param1, defs.hiden_region) then
		--看看计入哪个param 
		local gallery_param = 0
		for k,v in pairs(defs.counter) do 
			if v == 3 then
				gallery_param = k
			end
		end

		--update gallery
		if 0 ~= gallery_param then
			ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, { [gallery_param]= 1 })
			ScriptLib.PrintContextLog(context, "## [BoatRaceV2] Updata gallery. param@"..gallery_param)
		end	
		--设置陈列室缓存、触发挑战计数
		if "param1" == gallery_param then 
			ScriptLib.ChangeGroupTempValue(context, "exhi_counter_1", 1, {})
			ScriptLib.ChangeGroupVariableValue(context, "counter_1", 1)
		elseif "param2" == gallery_param then 
			ScriptLib.ChangeGroupTempValue(context, "exhi_counter_2", 1, {})
			ScriptLib.ChangeGroupVariableValue(context, "counter_2", 1)
		elseif "param3" == gallery_param then 
			ScriptLib.ChangeGroupTempValue(context, "exhi_counter_3", 1, {})
			ScriptLib.ChangeGroupVariableValue(context, "counter_3", 1)
		end
		--直接移除region，免得记录是否enter过
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, evt.param1)
	else
		return 0
	end	
		
	return 0
end
--[[
需求：
1-1 触发1174，判断是否触发过1173
1-2 如果触发过1174，没触发过1173，则触发1173，否则触发1175
其他 如果触发过1174和1175，不触发，否则触发1173
]]
function LF_TryShowGuide(context)
	--是否弹过
	--Activity_SummerTimeV2_BoatRace_Guide1
	local havePlayed1  = ScriptLib.GetExhibitionAccumulableData(context, context.uid, 11405108)
	--Activity_SummerTimeV2_BoatRace_Guide2
	local havePlayed2  = ScriptLib.GetExhibitionAccumulableData(context, context.uid, 11405109)
	--Activity_SummerTimeV2_BoatRace_Guide3
	local havePlayed3  = ScriptLib.GetExhibitionAccumulableData(context, context.uid, 11405110)

	if 0 < havePlayed3 then 
		return 0
	end

	--如果弹过第一关
    if 0 < havePlayed1 then
    	--第二关1175
    	if 199004061 == base_info.group_id and 1 > havePlayed2 then 
    		ScriptLib.ShowClientTutorial(context, 1175, {context.uid})
    		ScriptLib.AddExhibitionAccumulableData(context,context.uid, "Activity_SummerTimeV2_BoatRace_Guide2", 1)
    	else
    	--第二关以外其他关不弹
    	end
    --如果没弹过第一关 
    else
    	--第一关 1174
    	if 199003065 == base_info.group_id then 
	    	ScriptLib.ShowClientTutorial(context, 1174, {context.uid})
	        ScriptLib.AddExhibitionAccumulableData(context,context.uid, "Activity_SummerTimeV2_BoatRace_Guide1", 1)
    	else
    	--如果没玩过第一关，任意关 1173
    		if 1 > havePlayed1 then
	    	    ScriptLib.ShowClientTutorial(context, 1173, {context.uid})
	    		ScriptLib.AddExhibitionAccumulableData(context,context.uid, "Activity_SummerTimeV2_BoatRace_Guide3", 1)
    		end
    	end
    	
    end	

	return 0
end

--船行为埋点
function SLC_BoatRace_LuaMark(context, param1, param2, param3)
	ScriptLib.MarkGroupLuaAction(context, "SummerTimeV2_Boat_1", "", {["change_type"] = param1, ["change_num"] = param2, ["after_num"] = param3})	
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
Initialize()
