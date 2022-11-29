--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||	filename:	CrowTheatre_TheatreHandle
||	owner: 		weiwei.sun
||	description: 	夜鸦剧场演剧模式多Group管理 
||	LogName:	## [CrowTheatre]
||	Protection:	
=======================================]]
--[[

local	defs = 
{
	--操作台
	start_operator = ,

	--幕布物件configID
	curtain_gadget = 0,

	--第一幕GroupID
	play_group_1 = ,

	--第二幕GroupID
	play_group_2 = ,

	--散场GroupID
	play_group_3 = ,

	--玩法范围，主机出圈则重置
	play_region = ,


}

]]

local cfg = 
{
	--"回放第一幕"操作台选项id
	review_option_1 = 404,
	--"开启第一幕"操作台选项id
	starter_option_1 = 403,
	--"回放第二幕"操作台选项id
	review_option_2 = 408,
	--"开启第二幕"操作台选项id
	starter_option_2 = 407,

}

local extraTriggers={

	{ config_id = 8000001, name = "Manager_Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Manager_Select_Option", trigger_count = 0, forbid_guest = true},
	{ config_id = 8000002, name = "Manager_Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Manager_Group_Load", trigger_count = 0},
	{ config_id = 8000003, name = "Leave_PlayRegion", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Leave_PlayRegion", trigger_count = 0, forbid_guest = true },
	{ config_id = 8000004, name = "Starter_Gadget_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_Starter_Gadget_Create", trigger_count = 0 },
	{ config_id = 8000005, name = "Enter_PlayRegion", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_PlayRegion", trigger_count = 0, forbid_guest = true },
	{ config_id = 8000006, name = "Manager_Group_UnLoad", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_Manager_Group_UnLoad", trigger_count = 0},
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end

	--当前 逻辑上应当是第几幕在场
	table.insert(variables, { config_id = 50000001, name = "cur_play", value = 1 , no_refresh = true})

end

function action_Manager_Group_UnLoad(context, evt)
	LF_Try_ResetStagePlay(context)
	return 0
end

function action_Manager_Group_Load(context, evt)
	local cur_play = ScriptLib.GetGroupVariableValue(context, "cur_play")
	ScriptLib.PrintContextLog(context, "##[CrowTheatre] Manager group loaded. cur_play@"..cur_play)

	if 0 < cur_play and 3 >= cur_play then 

		LF_SwitchToPlay(context, cur_play)
		LF_HandleWorkTopOption(context)

	else
		--取值异常，告警并加载第一幕
		ScriptLib.PrintContextLog(context, "##[CrowTheatre] #WARN# Get Unknown cur_play. load play_group_1.")
		LF_SwitchToPlay(context, 1)
		LF_HandleWorkTopOption(context)
	end

	return 0
end

function action_Starter_Gadget_Create(context, evt)
	if defs.start_operator ~= evt.param1 then 
		return 0
	end
	LF_HandleWorkTopOption(context)
	return 0
end
--台上Group切换
--to_play: 第几个Group 1-上幕 2-下幕 3-散场幕
function LF_SwitchToPlay(context, to_play)

	ScriptLib.PrintContextLog(context, "##[CrowTheatre] LF_SwitchToPlay. to_play@"..to_play)

	if 1 == to_play then 

		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 0, defs.play_group_1)
		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_2)
		if nil ~= defs.play_group_3 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_3)
		end
	elseif 2 == to_play then 

		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_1)
		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 0, defs.play_group_2)
		if nil ~= defs.play_group_3 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_3)
		end
	elseif 3 == to_play then 

		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_1)
		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_2)
		if nil ~= defs.play_group_3 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 0, defs.play_group_3)
		end
	else
		--取值异常，告警并加载第一幕
		ScriptLib.PrintContextLog(context, "##[CrowTheatre] #WARN# Get Unknown cur_play. load play_group_1.")
		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 0, defs.play_group_1)
		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_2)
		if nil ~= defs.play_group_3 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 4, defs.play_group_3)
		end
	end
	
	return 0
end
--演出Group通知主控Group播放完成
--第一幕完成 ->幕布自动关 -> 等幕布关完切Group
function EX_PlayFinished(context, prev_context, group_id, is_review)

	ScriptLib.PrintContextLog(context, "## [CrowTheatre] EX_PlayFinished called. group_id@"..group_id.. " is_review@".. is_review)

	--终幕的 下幕 游玩模式
	if 199002077 == base_info.group_id and 0 == is_review and defs.play_group_2 == group_id then
		--不关幕布	但要移除隐形操作台
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.start_operator)
		--并且切出散场幕
		LF_SwitchToPlay(context, 3)
	--其他情况
	else
		--关上幕布
		ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.curtain_gadget, 0)
	end
	
	--如果是第一幕的非回放结束，
	--切换 逻辑在场group 为2
	if group_id == defs.play_group_1 and is_review == 0 then 
		ScriptLib.SetGroupVariableValue(context, "cur_play", 2)
	else
		ScriptLib.SetGroupVariableValue(context, "cur_play", 3)
	end

	return 0
end

function action_Manager_Select_Option(context, evt)

	ScriptLib.PrintContextLog(context, "## [CrowTheatre] Manager_Select_Option. gadget@"..evt.param1.." option@"..evt.param2)

	if defs.start_operator ~= evt.param1 then 
		return 0
	end

	LF_ClearOptions(context)

	--如果幕布关着，则缓存选项id，拉开幕布，切换在场幕，等待幕布SLC再开演
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.curtain_gadget) then
		ScriptLib.SetGroupTempValue(context, "selection", evt.param2,{})				
		--"开始第一幕"
		if cfg.starter_option_1 == evt.param2 then 
			LF_SwitchToPlay(context, 1)
		--"开始第二幕"
		elseif cfg.starter_option_2 == evt.param2 then 
			LF_SwitchToPlay(context, 2)
		--"回看第一幕"
		elseif cfg.review_option_1 == evt.param2 then 
			LF_SwitchToPlay(context, 1)
		--"回看第二幕"
		elseif cfg.review_option_2 == evt.param2 then 
			LF_SwitchToPlay(context, 2)	
		end
		--拉开幕布
		ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.curtain_gadget, 201)
	--如果幕布开着，则直接开演
	else

		--"开始第一幕"
		if cfg.starter_option_1 == evt.param2 then 
			LF_SwitchToPlay(context, 1)
			LF_StartPlay(context, 1, 0)
		--"开始第二幕"
		elseif cfg.starter_option_2 == evt.param2 then 
			LF_SwitchToPlay(context, 2)
			LF_StartPlay(context, 2, 0)
		--"回看第一幕"
		elseif cfg.review_option_1 == evt.param2 then 
			LF_SwitchToPlay(context, 1)
			LF_StartPlay(context, 1, 1)
		--"回看第二幕"
		elseif cfg.review_option_2 == evt.param2 then 
			LF_SwitchToPlay(context, 2)
			LF_StartPlay(context, 2, 1)			
		end

	end
	
	return 0
end

--type:0-游玩模式 1-回看模式
function LF_StartPlay(context, play_to_start, type)

	ScriptLib.PrintContextLog(context, "##[CrowTheatre] LF_StartPlay. play_to_start@"..play_to_start.." type@"..type)	

	if 1 == play_to_start then
		
		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 1, defs.play_group_1)
		ScriptLib.ExecuteGroupLua(context, defs.play_group_1, "EX_SequenceAction", {type})
		
	elseif 2 == play_to_start then

		ScriptLib.SetGroupVariableValueByGroup(context, "play_state", 1, defs.play_group_2)
		ScriptLib.ExecuteGroupLua(context, defs.play_group_2, "EX_SequenceAction", {type})
	end

	return 0
end

function LF_ClearOptions(context)
	ScriptLib.PrintContextLog(context, "##[CrowTheatre] LF_ClearOptions.")
	ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.start_operator, cfg.starter_option_1)
	ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.start_operator, cfg.starter_option_2)
	ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.start_operator, cfg.review_option_1)
	ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.start_operator, cfg.review_option_2)
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_ClearOptions done.")
	return 0
end

--幕布物件开启动画完成
function SLC_CrowTheatre_Curtain_On(context)

	local selection = ScriptLib.GetGroupTempValue(context, "selection", {})
	ScriptLib.PrintContextLog(context, "##[CrowTheatre] SLC_CrowTheatre_Curtain_On. selection@"..selection)

	--通知当前场上的Group开演
		--"开始第一幕"
		if cfg.starter_option_1 == selection then 
			LF_StartPlay(context, 1, 0)
		--"开始第二幕"
		elseif cfg.starter_option_2 == selection then 
			LF_StartPlay(context, 2, 0)
		--"回看第一幕"
		elseif cfg.review_option_1 == selection then 
			LF_StartPlay(context, 1, 1)
		--"回看第二幕"
		elseif cfg.review_option_2 == selection then 
			LF_StartPlay(context, 2, 1)			
		end

	return 0
end

--幕布物件关闭动画完成
function SLC_CrowTheatre_Curtain_Off(context)

	--设置操作台选项
	LF_HandleWorkTopOption(context)

	--如果此时逻辑幕，非当前在场幕，切出逻辑幕
	--取得当前逻辑幕
	local cur_play = ScriptLib.GetGroupVariableValue(context, "cur_play")
	LF_SwitchToPlay(context, cur_play)

	ScriptLib.PrintContextLog(context, "## [CrowTheatre] SLC_CrowTheatre_Curtain_Off. cur_play@"..cur_play)
	
	return 0
end


function LF_HandleWorkTopOption(context)
	ScriptLib.PrintContextLog(context, "## [CrowTheatre] LF_HandleWorkTopOption. play_group_1@"..defs.play_group_1.. " play_group_2@".. defs.play_group_2)

	local is_done_1 = ScriptLib.GetGroupVariableValueByGroup(context, "is_done", defs.play_group_1)
	local is_done_2 = ScriptLib.GetGroupVariableValueByGroup(context, "is_done", defs.play_group_2)

	--取值异常，紧急模式,上下幕都
	if is_done_1 == -1 or is_done_2 == -1 then 
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.start_operator, { cfg.starter_option_1, cfg.starter_option_2})
	end

	if 0 == is_done_1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.start_operator, { cfg.starter_option_1 })
	else
		if 0 == is_done_2 then 
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.start_operator, { cfg.starter_option_2, cfg.review_option_1 })
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.start_operator, { cfg.review_option_1, cfg.review_option_2 })
		end
	end
	return 0
end

--出圈，触发重置（不能以GroupLoad/Unload作为边界，因为有SetTeamServerGlobalValue的原因。游玩A Group时会被远处加载的B Group影响
function action_Leave_PlayRegion(context, evt)

	if defs.play_region ~= evt.param1 then 
		return 0
	end
	LF_Try_ResetStagePlay(context)
	--关闭幕布
	--特判终幕 且任务环7902605已接取未完成 不落幕布
	if 199002077 ~= base_info.group_id then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.curtain_gadget, 0)
	else
		if 2 ~= ScriptLib.GetHostQuestState(context,7902605) and 2 ~= ScriptLib.GetHostQuestState(context,7902606) and 2 ~= ScriptLib.GetHostQuestState(context,7902607)then
			ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.curtain_gadget, 0)
		end
	end
	--清除拾取buff表现
	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_NightCrow_Picked", 0)
	ScriptLib.PrintContextLog(context, "[CrowTheatre] Host leave region.")	
	return 0
end
--入圈回来
function action_Enter_PlayRegion(context, evt)
	if defs.play_region ~= evt.param1 then 
		return 0
	end
	ScriptLib.ExecuteGroupLua(context, defs.play_group_1, "EX_InitTheatre", {})
	ScriptLib.ExecuteGroupLua(context, defs.play_group_2, "EX_InitTheatre", {})
	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_NightCrow_Picked", 0)
	LF_HandleWorkTopOption(context)
	ScriptLib.PrintContextLog(context, "[CrowTheatre] Host enter region.")
	return 0
end

function LF_Try_ResetStagePlay(context)
	local cur_play = ScriptLib.GetGroupVariableValue(context, "cur_play")
	--play_state不为4（隐藏态）时，需要执行LF_ResetStagePlay
	if 1 == cur_play then 

		local play_state = ScriptLib.GetGroupVariableValueByGroup(context, "play_state", defs.play_group_1)
		if 4 ~= play_state then
			ScriptLib.ExecuteGroupLua(context, defs.play_group_1, "EX_ResetStagePlay", {})
		end

	elseif 2 == cur_play then 

		local play_state = ScriptLib.GetGroupVariableValueByGroup(context, "play_state", defs.play_group_2)
		if 4 ~= play_state then
			ScriptLib.ExecuteGroupLua(context, defs.play_group_2, "EX_ResetStagePlay", {})
		end
	end
	return 0
end

LF_Initialize_Group(triggers, suites)