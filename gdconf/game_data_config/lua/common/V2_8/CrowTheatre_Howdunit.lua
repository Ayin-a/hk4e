--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||	filename:	CrowTheatre_Howdunit
||	owner: 		weiwei.sun
||	description: 	夜鸦剧场演剧模式的流程逻辑。 
||	LogName:	## [CrowTheatre]
||	Protection:	
=======================================]]
--[[

local	defs = 
{

	--每个阶段(Stage)的所有演员物件config_id。用于统一设置可拾取/可对话状态
	actor_list = 
	{
		[1] = 
		{ 
			[4001] = 201190701,
		},
		[2] = {}
	},
    --可拾取的gadget列表，即not in any suite的夜鸦雕像，列表为每个阶段(Stage)的最终站位点的configID
    pickable_gadget = 
    {
            [4002] = {0, 4013, 4013}, 
    },
   	--同上，用于常驻夜鸦的位置保存
    static_gadget = 
    {
            [4002] = {0, 4013, 4013}, 
    },
	--每个阶段(Stage)的行动（action）序列
	actions = 
	{
		{
	   		[1] = { config_id = 9001, reminder_id = 31021109, arg = 0, point_array = 0, point_id_list = {}, duration = 5},
		},
		{
	  		[1] = { config_id = 9002, reminder_id = 31021107, arg = 0, point_array = 0, point_id_list = {}, duration = 3},
		},
	},
	spec_actions = 
	{
		{
	   		[1] = { config_id = 22, reminder_id = 31021109, arg = 0, point_array = {11, 22}, point_id_list = {1,2,3}, duration = 5},
		},
	},

	--每阶段(Stage)剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
	--key是阶段序号
	question_suits =  
	{
   		[1] = { add_suite = 3, correct_slot = 1111, correct_gadget = 11, spec = 22,},
   		[2]	= { add_suite = 4, correct_slot = 2222, correct_gadget = 22},
	},


}

]]
local cfg = 
{
	--reminder广播范围
	reminder_radius = 30,
	--成功失败物件表现等待时间
	ani_wait_time = 2,
	--"开启第一幕"操作台选项id
	starter_option_1 = 403,
	--"开启第二幕"操作台选项id
	starter_option_2 = 407,
	--"放置"操作台选项id
	place_option = 426,
	--物件在哪个suite 剧场处于激活状态时加载
	play_suite = 2,

	--"回放第一幕"操作台选项id
	review_option_1 = 404,

	--"回放第二幕"操作台选项id
	review_option_2 = 408,
}

local extraTriggers={
	{ config_id = 8000001, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
	--玩法Trigger
	{ config_id = 8000003, name = "TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000006, name = "Place_NightCrow_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Place_NightCrow_Option", trigger_count = 0 },
	--外部Group控制是否开启
	{ config_id = 8000008, name = "Thearte_Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "play_state", condition = "", action = "action_Thearte_Variable_Change", trigger_count = 0 },
	{ config_id = 8000009, name = "Talk_Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "talk_done", condition = "", action = "action_Talk_Variable_Change", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)

	end
	--状态标志位 0- 等待开启 1- 正在表演 2- 等待选择 3-完成 4-hide状态
	--改为LD在关卡编辑器上声明，以便配置初始值
	--table.insert(variables, { name = "play_state", value = 0 , no_refresh = true})
	--当前第几段剧情。
	table.insert(variables, { config_id = 50000001, name = "cur_stage", value = 1 , no_refresh = true})
	--是否做过解谜阶段，可以回放
	table.insert(variables, { config_id = 50000002, name = "is_done", value = 0 , no_refresh = true})
	table.insert(variables, { config_id = 50000003, name = "qa", value = 0})
end

--根据演出阶段 重置static_gadget里的夜鸦位置
function action_Group_Load(context, evt)
	if nil == defs.static_gadget then 
		return 0
	end
	local play_state = ScriptLib.GetGroupVariableValue(context, "play_state")
	if 4 == play_state then 
		return 0
	end
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	for k,v in pairs(defs.static_gadget) do
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, k)
		--按配置位置重新创建
		LF_InitStateStaticActor(context, k)
	end
	return 0
end

function EX_InitTheatre(context, prev_context)
	LF_InitTheatre(context)
	ScriptLib.SetGroupVariableValue(context, "qa", 0)
	return 0
end

function LF_InitTheatre(context)

	local play_state = ScriptLib.GetGroupVariableValue(context, "play_state")
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_InitTheatre. play_state@"..play_state.." stage@"..stage)

	--初始化动作序号
	ScriptLib.SetGroupTempValue(context,"action_index", 0, {})
	--Group加载时玩家应重新拾取乌鸦
	ScriptLib.SetGroupTempValue(context,"picked_up", 0, {})
	--local uid = ScriptLib.GetSceneOwnerUid(context) --不处理SGV因为玩家正在玩其他Group会影响到,改到主控Group的EnterRegion
	--ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_NightCrow_Picked", 0)

	--hide状态下，移除演出suite（如有
	if 4 == play_state then
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, cfg.play_suite)
		return 0
	--非hide状态，拉出夜鸦
	else
		--加载演出suite
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, cfg.play_suite)
		--5.16迭代 如果stage大于1，即上次是演到一半中断了，则执行LF_InitStateActors
		if 1 < stage then 
			--pickable夜鸦
			LF_InitStateActors(context)
			--statice夜鸦
			if nil ~= defs.static_gadget then
				for k,v in pairs(defs.static_gadget) do
					ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, k)
					--按配置位置重新创建
					LF_InitStateStaticActor(context, k)
				end
			end
		end
	end
	--间幕3下 特殊对话夜鸦阿诺德 在init时需要替换talk
	if 199002043 == base_info.group_id then 
		LF_HandleTalkGadget(context)
	end
	return 0
end

function LF_HandleTalkGadget(context)
	--7902603的已接取未完成状态
	if 2 == ScriptLib.GetHostQuestState(context,7902603) then 
		local ret = ScriptLib.SetGadgetTalkByConfigId(context,199002048,48008,0)
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_HandleTalkGadget. ret@"..ret)
	end
	return 0
end

function action_Talk_Variable_Change(context, evt)
	--判断终幕下半场
	if 199002043 ~= base_info.group_id then 
		return 0
	end
	--阿诺德特殊对话结束
	if 1 ~= evt.param1 then 	
		return 0
	end
	--判断剧场处于选人阶段
	if 2 ~= ScriptLib.GetGroupVariableValue(context, "play_state") then 
		return 0
	end
	--断剧场处于stage 4
	if 4 ~= ScriptLib.GetGroupVariableValue(context, "cur_stage") then 
		return 0
	end
	--判断当前未持有夜鸦
	if 0 < ScriptLib.GetGroupTempValue(context, "picked_up", {}) then 
		return 0
	end
	ScriptLib.SetGadgetStateByConfigId(context, 43005, 201)
	return 0
end

--重置各种变量
function LF_ResetVariables(context)
	--重置 动作序号
	ScriptLib.SetGroupTempValue(context,"action_index", 0, {})
	--重置 拾取乌鸦标记
	ScriptLib.SetGroupTempValue(context,"picked_up", 0, {})
	--如果在玩的是当前Group，则清掉玩家身上特效 state 2、1是本Group的游玩状态
	local state = ScriptLib.GetGroupVariableValue(context, "play_state")
	if 2 == state or 1 == state then 
		local uid = ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_NightCrow_Picked", 0)
	end
	--重置演出阶段
	ScriptLib.SetGroupVariableValue(context, "cur_stage", 1)
	return 0
end

function action_Thearte_Variable_Change(context, evt)
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] Thearte_Variable_Change from@"..evt.param2.." to@"..evt.param1)

	--在任何状态下，被通知关闭
	if 4 == evt.param1 then 
		LF_ResetVariables(context)
		--隐藏
		--ScriptLib.RefreshGroup(context, { group_id = 0, suite = init_config.suite })--不用这个 LD的大宝箱要留在场上
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, cfg.play_suite)--移除固定演员
		for k,v in pairs(defs.pickable_gadget) do--移除可拾取演员
			--特判199002043的阿诺德43005
			if 199002043 == base_info.group_id and 43005 == k then
				if 1 == ScriptLib.GetGroupVariableValue(context, "talk_done") then 
					ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, k)
				end 
			else
				ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, k)
			end		
		end
		return 0
	end

	--在关闭状态下，被通知开启
	if 0 == evt.param1 and 4 == evt.param2 then 	
		LF_ResetVariables(context)
		--加载演出suite
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, cfg.play_suite)
		return 0
	end

	return 0
end

--可拾取夜鸦雕像 拾取
function SLC_NightCrowPickUp(context)
	local state = ScriptLib.GetGroupVariableValue(context, "play_state")
	--检查是否处于正确阶段
	if 2 ~= state then 
		return 0
	end
	--检查重复交互
	if 0 < ScriptLib.GetGroupTempValue(context,"picked_up", {}) then 
		return 0
	end

	local cfg_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })

	ScriptLib.SetGroupTempValue(context,"picked_up", cfg_id, {})
	local uid = ScriptLib.GetSceneOwnerUid(context)
	ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_NightCrow_Picked", 1)

	--将可拾取夜鸦置为无交互状态
	LF_SetAllActorsState(context, 0)
	
	ScriptLib.KillEntityByConfigId(context, { config_id = cfg_id })
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] SLC_NightCrowPickUp. By@"..cfg_id)

	--添加“放置”选项
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	local stage_table = defs.question_suits[stage]		
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, stage_table.correct_slot, {cfg.place_option})

	return 0
end

--可拾取夜鸦雕像 对话
function SLC_NightCrowHint(context)
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] SLC_NightCrowHint")
	local state = ScriptLib.GetGroupVariableValue(context, "play_state")
	if 2 == state then 
		local cfg_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] SLC_NightCrowHint. By@"..cfg_id)
		LF_ShowHintReminder(context, cfg_id)
	else
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] #WARN# Get SLC_NightCrowHint at wrong state@"..state)
	end

	return 0
end

--播放当前阶段的提示reminder
function LF_ShowHintReminder(context, config_id)
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_ShowHintReminder. cur_stage@"..stage.." by@"..config_id)

	for k, v in pairs(defs.actor_list) do
		if k == stage then	
			ScriptLib.ShowReminderRadius(context, v[config_id] , gadgets[config_id].pos, cfg.reminder_radius)
		end
	end
	return 0
end

--向config_id的操作台位置放置夜鸦雕像
function LF_PlaceNightCrow(context, option_configID, gadget_configID)

	local ret = ScriptLib.CreateGadgetByConfigIdByPos(context, gadget_configID, gadgets[option_configID].pos, gadgets[option_configID].rot)

	if 0 ~= ret then 
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_PlaceNightCrow CreateGadgetByConfigIdByPos failed. ret@"..ret)
		return 0
	end
	--placed用于放错时将其放回
	ScriptLib.SetGroupTempValue(context,"picked_up", 0, {})
	ScriptLib.SetGroupTempValue(context,"placed", gadget_configID, {})

	local uid = ScriptLib.GetSceneOwnerUid(context)
	ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_NightCrow_Picked", 0)

	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_PlaceNightCrow. cur_stage@"..stage)

	--移除“放置”选项,移除question_suite
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	local stage_table = defs.question_suits[stage]	
	ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, stage_table.correct_slot, cfg.place_option)	
	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.question_suits[stage].add_suite)

	--检查是否是正确位置，正确的雕像
	local stage_table = defs.question_suits[stage]
	if option_configID == stage_table.correct_slot and gadget_configID == stage_table.correct_gadget then 
		--标记play_state 2的结束
		ScriptLib.SetGroupVariableValue(context, "play_state", 1)
		if #defs.actions <= stage then
			--全阶段完成
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_PlaceNightCrow success. All stage finished")
		else
			local next_stage = stage + 1
			LF_SetAllActorsState(context, 0)
			ScriptLib.SetGroupVariableValue(context, "cur_stage", next_stage)
			
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_PlaceNightCrow success. new_stage@"..next_stage)

			--初始化动作序号
			ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
			LF_SequenceAction(context, 0)
		end
		--埋点
		 ScriptLib.MarkGroupLuaAction(context, "NightCrowTheater", "", {["group_id"] = base_info.group_id, ["config_id"] = gadget_configID, ["result"] = 1, ["slot_id"] = option_configID})
	else
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_PlaceNightCrow wrong. ")
		--埋点
		 ScriptLib.MarkGroupLuaAction(context, "NightCrowTheater", "", {["group_id"] = base_info.group_id, ["config_id"] = gadget_configID, ["result"] = 0, ["slot_id"] = option_configID})
		--检查是否是spec(彩蛋夜鸦)
		if gadget_configID == stage_table.spec then 
			LF_HandleSpecCrowAction(context, stage)
			LF_StageFail(context, defs.spec_actions[stage].duration, option_configID)
		else
			LF_StageFail(context, 0, option_configID)
		end
	end

	return 0
end
function LF_HandleSpecCrowAction(context, stage)
	local step = defs.spec_actions[stage]
	--取实时位置
	local pos = LF_GetEntityPosition(context, step.config_id)

	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_HandleSpecCrowAction: Try show reminder@"..step.reminder_id.." pos@"..pos.x.." "..pos.y.." "..pos.z)
	if 0 ~= pos then 
		ScriptLib.ShowReminderRadius(context, step.reminder_id, pos, cfg.reminder_radius)
	end
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_HandleSpecCrowAction: Try Set GadgetState. ConfigId@"..step.config_id)
	--切GadgetState到203状态 发光+气泡
	ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 203)

	--处理移动
	if  0 ~= step.point_array then
		ScriptLib.SetPlatformPointArray(context, step.config_id, step.point_array[1], step.point_id_list, {route_type = 0, turn_mode = true, record_mode = 0})
	end
	return 0
end

--清场
function LF_ClearStateActors(context)

	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_ClearActors. stage@"..stage)

	--移除全部pickable_gadget演员
	for k,v in pairs(defs.pickable_gadget) do
		--特判199002043的阿诺德43005
		if 199002043 == base_info.group_id and 43005 == k then
			if 1 == ScriptLib.GetGroupVariableValue(context, "talk_done") then 
				ScriptLib.KillEntityByConfigId(context, { config_id = k })
			end 
		else
			ScriptLib.KillEntityByConfigId(context, { config_id = k })
		end			
	end
	--移除本stage行动序列中，所有移动过的演员
	for k,v in pairs(defs.actions[stage]) do 
		if 0 < v.point_array then 
			ScriptLib.KillEntityByConfigId(context, { config_id = v.config_id })
		end
	end
	return 0
end
--根据当前阶段Create 单个static_gadget夜鸦雕像 
function LF_InitStateStaticActor(context, config_id)
	if nil == defs.static_gadget then 
		return 0
	end
	if nil == defs.static_gadget[config_id] then 
		return 0
	end
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_InitStateStaticActor. stage@"..stage.." configid@".. config_id)
	--如果是一阶段，则按原始坐标CreateGadget
	if 1 == stage then
		ScriptLib.CreateGadget(context, { config_id = config_id })
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_InitStateStaticActor. Create gadget@"..config_id)
	--若非一阶段，则在stage对应的配置位置CreateGadget
	elseif 1 < stage then
		--范围检查
		if #defs.question_suits < stage - 1 then
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] #WARN# LF_InitStateStaticActor. Get unexpected stage! stage@"..stage.." question_suits count@"..#defs.question_suits)
			return 0
		end

		LF_CreateActorByStage(context, config_id, defs.static_gadget, stage)
	
	else
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] #WARN# LF_InitStateStaticActor. Get cur stage Failed! stage@"..stage)
	end
	return 0
end
--根据当前阶段Create pickable_gadget中的全部夜鸦雕像
function LF_InitStateActors(context)
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_InitStateActors. stage@"..stage)
	--特判阿诺德 在登场后（stage 5）要先杀后创
	if 199002043 == base_info.group_id and 5 <= stage then 
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, 43005)
	end
	--如果是一阶段，则按原始坐标CreateGadget
	if 1 == stage then
		for k, v in pairs(defs.pickable_gadget) do
			ScriptLib.CreateGadget(context, { config_id = k })
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_InitStateActors. Create gadget@"..k)
		end
	--若非一阶段，则在stage对应的配置位置CreateGadget
	elseif 1 < stage then
		--范围检查
		if #defs.question_suits < stage - 1 then
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] #WARN# LF_InitStateActors. Get unexpected stage! stage@"..stage.." question_suits count@"..#defs.question_suits)
			return 0
		end
		--开始放置
		for k, v in pairs(defs.pickable_gadget) do
			LF_CreateActorByStage(context, k, defs.pickable_gadget, stage)
		end

	else
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] #WARN# LF_InitStateActors. Get cur stage Failed! stage@"..stage)
	end

	--特判 199002044，44006以101形态创建
	if 199002044 == base_info.group_id then 
		ScriptLib.SetGadgetStateByConfigId(context, 44006, 101)
	end
	return 0
end

function LF_CreateActorByStage(context, config_id, pos_table, stage)
	--根据当前stage，找到对应的目标点物件
	if nil == pos_table[config_id][stage] then
		--取空了，LD没配，告警，在原地Create
		ScriptLib.CreateGadget(context, { config_id = config_id })
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] #WARN# Stage num and point configs are not match!")
	elseif 0 == pos_table[config_id][stage] then
		--配置目标点为0，原地Create。 已在前阶段登场的夜鸦正常都不该配0，否则会在不合理的位置出现
		ScriptLib.CreateGadget(context, { config_id = config_id })
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_CreateActorByStage. Create gadget@"..config_id)
	elseif 0 > pos_table[config_id][stage] then
		--配置目标点为-1，此物件在本stage不出现。 用于登场过但是退场不再出现的夜鸦
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_CreateActorByStage. Skip gadget@"..config_id)
	else
		--有目标点就按目标点Create
		ScriptLib.CreateGadgetByConfigIdByPos(context, config_id, gadgets[pos_table[config_id][stage]].pos, gadgets[pos_table[config_id][stage]].rot)
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_CreateActorByStage. Create gadget@"..config_id.." at point@"..pos_table[config_id][stage])
	end
	return 0
end

function LF_AutoPickAndPlace(context)

	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")

	--stage异常 直接主动重置剧场
	if nil == defs.question_suits[stage] then 
		LF_ResetStagePlay(context)
		LF_ResetVariables(context)
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_AutoPickAndPlace. Invalid stage, reset.")
	end

	local config_id = defs.question_suits[stage].correct_gadget
	local slot = defs.question_suits[stage].correct_slot

	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_AutoPickAndPlace. stage@"..stage .." config_id@"..config_id.." slot@"..slot)

	--ScriptLib.KillEntityByConfigId(context, { config_id = config_id })
	ScriptLib.CreateGadgetByConfigIdByPos(context, config_id, gadgets[slot].pos, gadgets[slot].rot)

	if #defs.actions <= stage then
		--全阶段完成
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_AutoPickAndPlace success. All stage finished")
	else
		local next_stage = stage + 1
		LF_SetAllActorsState(context, 0)
		ScriptLib.SetGroupVariableValue(context, "cur_stage", next_stage)
		
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_AutoPickAndPlace success. new_stage@"..next_stage)

		--初始化动作序号
		ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
		LF_SequenceAction(context, 1)
	end

	return 0
end

function EX_SequenceAction(context, prev_context, type)
	--初始化动作序号
	ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
	LF_SequenceAction(context, type)
	return 0
end
--根据action配置执行行动
-- type：0-演剧模式 1-回放模式
function LF_SequenceAction(context, type)

	local ret = ScriptLib.ChangeGroupTempValue(context, "action_index", 1, {})
	if -1 == ret then 
		ScriptLib.SetGroupTempValue(context, "action_index", 1, {})
	end
	local cur_index = ScriptLib.GetGroupTempValue(context, "action_index", {})

	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction. stage@"..stage)
	--stage异常，这种不大可能出现，一旦出现则去stage 1
	if nil == defs.actions[stage] then
		stage = 1
		ScriptLib.SetGroupVariableValue(context, "cur_stage", stage)
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] Invalid stage. set to 1.")
	end

	local stage_table = defs.actions[stage]

	--重置上一步演员状态
	if 1 < cur_index then
		local last_actor = stage_table[cur_index - 1].config_id
		--上一步无演员或演员有特殊动作 则不置为0
		if 0 == last_actor or nil ~= stage_table[cur_index - 1].arg then
			--ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction. Last actor has action arg. last_actor@"..last_actor.." arg@"..stage_table[cur_index - 1].arg)
		else
			ScriptLib.SetGadgetStateByConfigId(context, last_actor, 0)			
		end
	end 

	--是否已结束
	if #stage_table < cur_index then
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] Sequence actions finished. action_count@"..#stage_table.." cur_index@"..cur_index)

		if stage == #defs.actions then
			--如果是最后一段剧情，不进入断案阶段，成功
			LF_Success(context, type)
		else
			--如果不是最后一段剧情，
			if 0 == type then 
				--在演剧模式下进入断案阶段，
				LF_SetPickPhrase(context, 0)
			else
				--在回放模式下销毁和创生目标夜鸦，然后继续下一段
				LF_AutoPickAndPlace(context)
			end

		end
		return 0
	end
	
	--action_index异常，按1算
	if nil == stage_table[cur_index] then
		cur_index = 1
		ScriptLib.SetGroupTempValue(context, "action_index", cur_index, {})
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] Invalid action_index. set to 1.")
	end

	--这一步总共要干啥
	local step = stage_table[cur_index]
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] Sequence actions Set. Step_index@"..cur_index.." cfg_id@"..step.config_id.." rmd_id@"..step.reminder_id.." point_array@"..step.point_array)
	--这一步是否是一个有主语的动作
	if 0 ~= step.config_id then

		--如果有台词，以物件为中心，范围内ShowReminder
		if 0 ~= step.reminder_id then
			--取实时位置
			local pos = LF_GetEntityPosition(context, step.config_id)

			ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction: Try show reminder@"..step.reminder_id.." pos@"..pos.x.." "..pos.y.." "..pos.z)
			if 0 ~= pos then 
				ScriptLib.ShowReminderRadius(context, step.reminder_id, pos, cfg.reminder_radius)
			end

			--处理GadgetState			
			if nil ~= step.arg then 
				ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction: Try Set GadgetState. ConfigId@"..step.config_id.." arg@"..step.arg)
				--1-进入隐身无交互状态(101)
				if 1 == step.arg then
					ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 101)
				--2-进入隐身有交互状态(102)
				elseif 2 == step.arg then 
					ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 102)
				--3-脱离隐身并加上交互(0)
				elseif 3 == step.arg then 
					ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 0)
				end

			else
				ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction: Try Set GadgetState. ConfigId@"..step.config_id.." without arg.")
				--切GadgetState到203状态 发光+气泡
				ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 203)
			end

			--处理移动
			if  0 ~= step.point_array then
				ScriptLib.SetPlatformPointArray(context, step.config_id, step.point_array, step.point_id_list, {route_type = 0, turn_mode = false, record_mode = 0})
			end
		--没有台词，只做动作
		else
			--移动
			if  0 ~= step.point_array then
				ScriptLib.SetPlatformPointArray(context, step.config_id, step.point_array, step.point_id_list, {route_type = 0, turn_mode = false, record_mode = 0})
				--切GadgetState到204状态 发光+无气泡
				ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 204)
			else
			--切状态		
				if nil ~= step.arg then 
					ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction: Try Set GadgetState. ConfigId@"..step.config_id.." arg@"..step.arg)
					--1-进入隐身无交互状态(101)
					if 1 == step.arg then
						ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 101)
					--2-进入隐身有交互状态(102)
					elseif 2 == step.arg then 
						ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 102)
					--3-脱离隐身并加上交互(0)
					elseif 3 == step.arg then 
						ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 0)
					end
				end

			end

		end

	else

		--无主语动作，以区域中心为中心，范围内ShowReminder
		local pos = LF_GetEntityPosition(context, 0)
		if 0 ~= pos then 
			ScriptLib.ShowReminderRadius(context, step.reminder_id, pos, cfg.reminder_radius)
		end

	end

	--这一步是否是一个瞬时动作
	if 0 ~= step.duration then
		--QA模式
		if 1 ==  ScriptLib.GetGroupVariableValue(context, "qa") then 
			ScriptLib.InitTimeAxis(context, "duration"..type.."_"..stage.."_"..cur_index, {2}, false)
		else
			ScriptLib.InitTimeAxis(context, "duration"..type.."_"..stage.."_"..cur_index, { math.floor(step.duration) }, false)
		end
		
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] Actions has duration. duration@".. math.floor(step.duration))
	--不用等的话直接走下一步
	else
		LF_SequenceAction(context, type)
	end

	return 0
end
--is_fail:是否是选项错误重置,只重置单个
function LF_SetPickPhrase(context, is_fail)
	--进入断案阶段
	ScriptLib.SetGroupVariableValue(context, "play_state", 2)	

	--获取当前阶段
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SetPickPhrase. stage@"..stage)
	--stage异常 直接主动重置剧场
	if nil == defs.question_suits[stage] then 
		LF_ResetStagePlay(context)
		LF_ResetVariables(context)
		ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SetPickPhrase. Invalid stage, reset.")
	end

	local stage_table = defs.question_suits[stage]
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, stage_table.add_suite)

	if 1 == is_fail then 
		local config_id = ScriptLib.GetGroupTempValue(context, "placed", {})
		LF_CreateActorByStage(context, config_id, defs.pickable_gadget, stage)
	else
		LF_InitStateActors(context)
	end
	
	LF_SetAllActorsState(context, 201)
	return 0
end

function action_Place_NightCrow_Option(context, evt)
	--cfg.place_option
	if cfg.place_option ~= evt.param2 then 
		return 0
	end

	local picked_up = ScriptLib.GetGroupTempValue(context, "picked_up", {})
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] Place_NightCrow_Option. evt.param2@"..evt.param2.." picked_up@"..picked_up)
	if 0 >= picked_up then
		--没有拾取雕像
		return 0		
	else		
		LF_PlaceNightCrow(context, evt.param1, picked_up)
	end

	return 0
end
-- type：0-演剧模式 1-回放模式
function LF_Success(context, type)

	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_Success. type@"..type)
	ScriptLib.SetGroupVariableValue(context, "is_done", 1)
	--物件做动画表现
	LF_SetAllActorsState(context, 903)
	ScriptLib.SetGroupVariableValue(context, "play_state", 3)

	ScriptLib.ExecuteGroupLua(context, defs.curtain_group,"EX_PlayFinished",{ base_info.group_id, type})

	return 0
end
--config_id: ShowRaminder中心物
--spec_duration: 彩蛋夜鸦的表现时间
function LF_StageFail(context, spec_duration, config_id)
	--弹Reminder 
	ScriptLib.ShowReminderRadius(context, 1111355, gadgets[config_id].pos, 5)	

	--延时调用LF_ResetSelection
	if 0 ~= spec_duration then 
		ScriptLib.InitTimeAxis(context, "ani_wait", { spec_duration }, false)
	else
		ScriptLib.InitTimeAxis(context, "ani_wait", { cfg.ani_wait_time }, false)
	end
	
	--物件做动画表现
	LF_SetAllActorsState(context, 902)
	return 0
end

function EX_ResetStagePlay(context, prev_context)
	LF_ResetStagePlay(context)
	return 0
end

--重置玩法物件位置至Stage开端
function LF_ResetStagePlay(context)
	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	local theatre_state = ScriptLib.GetGroupVariableValue(context, "play_state")
	local cur_index = ScriptLib.GetGroupTempValue(context, "action_index", {})
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_ResetStagePlay at theatre_state@" ..theatre_state.." Stage@"..stage)

	--停止时间轴
	if 1 == theatre_state then
		if 1 == ScriptLib.GetGroupVariableValue(context, "is_done") then 
			ScriptLib.EndTimeAxis(context, "duration1_"..stage.."_"..cur_index)--回放模式演出时间轴 --"duration"..type.."_"..stage.."_"..cur_index
		else
			ScriptLib.EndTimeAxis(context, "duration0_"..stage.."_"..cur_index)--游玩模式演出时间轴 
		end
	elseif 2 == theatre_state then
		ScriptLib.EndTimeAxis(context, "ani_wait")--动画表现延时
	end

	--清除pickable gadget，重置常驻演员位置
	LF_ClearStateActors(context)

	--若为选人阶段 移除“放置”选项,移除question_suite
	if 2 == theatre_state then 
		local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
		local stage_table = defs.question_suits[stage]	
		ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, stage_table.correct_slot, cfg.place_option)	
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.question_suits[stage].add_suite)
	end
	--初始化动作序号
	ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
		
	--重置剧场状态为0	
	ScriptLib.SetGroupVariableValue(context, "play_state", 0)
	LF_SetAllActorsState(context, 0)
	
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_ResetStagePlay done.")

	return 0
end
--重置选项
function LF_ResetSelection(context)
	--清除可放置夜鸦
	local config_id = ScriptLib.GetGroupTempValue(context, "placed", {})
	ScriptLib.KillEntityByConfigId(context, { config_id = config_id })
	
	--重新设置选项和夜鸦
	LF_SetPickPhrase(context, 1)
	return 0
end

function action_TimeAxis_Pass(context, evt)
	local theatre_state = ScriptLib.GetGroupVariableValue(context, "play_state") 
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] TimeAxis_Pass. source_name@".. evt.source_name.." theatre_state@"..theatre_state)

	if 1 == theatre_state or 2 == theatre_state then
		if "duration0" == (string.sub(evt.source_name,1,9)) then 
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction duration finished. Do next action.")
			LF_SequenceAction(context, 0)
			return 0
		end
		if "duration1" == (string.sub(evt.source_name,1,9)) then 
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SequenceAction duration finished. Do next action.")
			LF_SequenceAction(context, 1)
			return 0
		end
		if "ani_wait" == evt.source_name then 
			ScriptLib.PrintContextLog(context, "## [CrowTheatre] ani_wait Finished. Execute LF_ResetSelection.")
			LF_ResetSelection(context)
			return 0
		end
	end
	return 0
end

function LF_GetEntityPosition(context, config_id)
	local position = { x = 0, y = 0, z = 0}

	local entity_id = ScriptLib.GetEntityIdByConfigId(context, config_id)

	--未能找到实体，返回玩法区域中心的坐标
	if 0 >= entity_id then 
		for k, v in pairs(regions) do
			position = v.pos 
			return position
		end
	end
	
	local pos_raw = ScriptLib.GetPosByEntityId(context, entity_id)
	--取整 太多小数位数导致ShowReminder谜之失败
	position.x = math.floor(pos_raw.x)
	position.y = math.floor(pos_raw.y)
	position.z = math.floor(pos_raw.z)
	
	return position
end

--返回夜鸦是否为pickableGadget
function LF_IsPickableGadget(context, config_id)
	--判断依据是是否布设在play_suite
	for k, v in pairs(suites[cfg.play_suite].gadgets) do
		if v == config_id then 
			return false
		end
	end
	return true
end

--当前stage演员物件统一切到指定状态
--target_state:切入的状态
function LF_SetAllActorsState(context, target_state)

	local stage = ScriptLib.GetGroupVariableValue(context, "cur_stage")
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_SetAllActorsState. cur_stage@"..stage.." target_state@"..target_state)

	for k, v in pairs(defs.actor_list) do
		if k == stage then
			for ik, iv in pairs(v) do
				--2022.4.25新增超级特判 199002043的43005阿诺德 如果LD侧的标志位为0 则不参与统一切状态
				if 199002043 == base_info.group_id then 
					local flag = ScriptLib.GetGroupVariableValue(context, "talk_done")
					if 43005 == ik and 0 == flag then
						--
					else
						ScriptLib.SetGadgetStateByConfigId(context, ik, target_state)
					end
				--2022.6.10新增特判 199002044，44006，别人切201的时候，它切102；别人切0的时候，它切101,其他state不管
				elseif 199002044 == base_info.group_id and 44006 == ik then 
					if 201 == target_state then 
						ScriptLib.SetGadgetStateByConfigId(context, ik, 102)
					elseif 0 == target_state then 
						ScriptLib.SetGadgetStateByConfigId(context, ik, 101)
					end
				else
					ScriptLib.SetGadgetStateByConfigId(context, ik, target_state)
				end						
			end
		end
	end
	
	return 0
end

LF_Initialize_Group(triggers, suites)