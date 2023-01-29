--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    DrumSingle
--||   RelVersion    ||    V3_4
--||   Owner         ||    chao-jin
--||   Description   ||    对应Gadget 70900431
--||   LogName       ||    ##[DrumSingle]
--||   Protection    ||    
--======================================================================================================================
--[[Defs & Miscs
local defs = {
	drum = 77001, --鼓的ConfigID
	interval = 2, --敲鼓的节奏间隔
	reminder_success = 400112,
	reminder_fail = 400113,
}
--敲鼓的节奏， 0空 1普攻 2下落 70900431鼓ID
local music_staff = {0,1,0,1, 1,0,1,0, 0,1,0,1}
]]
local OPTION = {
	SINGLE = 809,
	REGEXP = 810,
}

--======================================================================================================================
--Events
local DrumSingle_Triggers = {
    [1] = { name = "group_load", config_id = 8001001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_single_group_load", trigger_count = 0},
    [2] = { name = "select_option", config_id = 8001002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_single_select_option", trigger_count = 0},
    [3] = { name = "time_axis_pass", config_id = 8001003, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_single_time_axis_pass", trigger_count = 0},
    [4] = { name = "enter_region", config_id = 8001004, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0},
    [5] = { name = "leave_region", config_id = 8001005, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0},

}

function DrumSingle_Initialize()
	for k,v in pairs(DrumSingle_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001,name = "Finished", value = 0, no_refresh = true})
end

 DrumSingle_Initialize()

--加载Group时的操作
function action_single_group_load(context, evt) 
	ScriptLib.PrintContextLog(context, "##[DrumSingle]:加载敲鼓玩法Group")
	LF_ResetBeatMark(context)
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.drum, {OPTION.SINGLE}) 
	return 0
end

function action_enter_region(context,evt)
	return 0
end

function action_leave_region(context,evt)
	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Drum_Play_Start", 0)
	return 0
end
--玩家交互开始敲鼓玩法
function action_single_select_option(context, evt)
	--单曲模式
	if evt.param2 == OPTION.SINGLE then
		ScriptLib.PrintContextLog(context, "##[DrumSingle]:敲鼓玩法,单曲演奏模式") 
		ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Drum_Play_Start", 1)
		ScriptLib.SetGroupTempValue(context, "PlayMode", OPTION.SINGLE, {})
		if music_staff[1] ~= nil then
			--同步每个区间是否可以敲击
			ScriptLib.PrintContextLog(context, "##[DrumSingle]:更新鼓状态，可以敲击")
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.drum, "SGV_DrumAxis", 1)
		end
		ScriptLib.InitTimeAxis(context, "MusicPlay", {defs.interval}, true)
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.drum, {})
	end
	return 0
end

--检测敲击的时间轴
function action_single_time_axis_pass(context, evt)
	if evt.source_name == "MusicPlay" then 
		--处理单曲模式
--		if OPTION.SINGLE == ScriptLib.GetGroupTempValue(context, "PlayMode", {}) then		
			local pre_beat_index = ScriptLib.GetGroupTempValue(context, "BeatIndex", {})
			ScriptLib.PrintContextLog(context, "##[DrumSingle]:上一个节拍"..pre_beat_index)
			--处理上一个节拍是否错过,如果错过了就直接处理失败
			if music_staff[pre_beat_index] ~= nil then 
				if music_staff[pre_beat_index] ~= ScriptLib.GetGroupTempValue(context, "LastBeatType", {}) then
					ScriptLib.PrintContextLog(context, "##[DrumSingle]: 上一个节拍 MISS")
					LF_SinglePlayFail(context)
					return 0
				end 
			end

			--初始化下一个时间段内的记录变量，更新鼓的状态
			ScriptLib.SetGroupTempValue(context, "BeatPercussed", 0, {})
			ScriptLib.SetGroupTempValue(context, "LastBeatType", 0, {})
			if music_staff[pre_beat_index+1] ~= nil then
				--同步下一个区间可以敲击
				ScriptLib.PrintContextLog(context, "##[DrumSingle]:更新鼓状态，可以敲击")
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.drum, "SGV_DrumAxis", pre_beat_index+1)
			else
				ScriptLib.PrintContextLog(context, "##[DrumSingle]:没有下一个节拍了，成功")
				LF_SinglePlaySuccess(context)
			end

--		end
		ScriptLib.PrintContextLog(context, "##[DrumSingle]:节拍+1")
		ScriptLib.ChangeGroupTempValue(context, "BeatIndex", 1, {})
    end
	return 0
end

--======================================================================================================================
--LevelFunctions
--玩家攻击敲鼓的SLC
function SLC_DrumPercussSingle(context, beat_timing, beat_type)
	local play_mode = ScriptLib.GetGroupTempValue(context, "PlayMode", {})
	if play_mode == 0 then
		ScriptLib.PrintContextLog(context, "##[DrumSingle]:演奏未开始，不处理敲击事件") 
		return 0
	end
	ScriptLib.PrintContextLog(context, "##[DrumSingle]:[SLC]敲鼓")

	--获取是否进行过敲击
	local has_percussed = ScriptLib.GetGroupTempValue(context, "BeatPercussed", {})
	if 0 ~= ScriptLib.GetGroupTempValue(context, "BeatPercussed", {}) then 
		ScriptLib.PrintContextLog(context, "##[DrumSingle]:当前节拍重复敲击，失败")
		LF_SinglePlayFail(context)
		return 0
	end
	ScriptLib.SetGroupTempValue(context, "LastBeatType", beat_type, {})
	--获取当前的敲击序列
	local staff_index = ScriptLib.GetGroupTempValue(context, "BeatIndex", {})
	--单曲模式校验
	if play_mode == OPTION.SINGLE then 
		if music_staff[staff_index] ~= 0 then 
			if beat_timing == 0 then 
				ScriptLib.PrintContextLog(context, "##[DrumSingle]:未在敲击区间内敲击，失败")
				LF_SinglePlayFail(context)
				return 0
			else
				if music_staff[staff_index] ~= beat_type then 
					ScriptLib.PrintContextLog(context, "##[DrumSingle]:敲击方式错误，失败"..beat_type)
					LF_SinglePlayFail(context)
					return 0
				end
				--最后一个节拍敲完
				if staff_index >= #music_staff then 
					ScriptLib.PrintContextLog(context, "##[DrumSingle]:全部节拍完成")
					LF_SinglePlaySuccess(context)
					return 0
				end
			end
		else
			ScriptLib.PrintContextLog(context, "##[DrumSingle]:在非敲击节拍上进行敲击，失败处理")
			LF_SinglePlayFail(context)
			return 0
		end
	end
	--标记进行过敲击
	ScriptLib.SetGroupTempValue(context, "BeatPercussed", 1, {})
	return 0
end

--初始化鼓的敲击标记
function LF_ResetBeatMark(context)
	ScriptLib.PrintContextLog(context, "##[DrumSingle]:初始化节拍监听变量")
	ScriptLib.SetGroupTempValue(context, "BeatIndex", 1, {})	--记录当前需要查询的节拍
	ScriptLib.SetGroupTempValue(context, "BeatPercussed", 0, {})	--当前节拍是否敲击过(同一个节拍只能敲击一次)
	ScriptLib.SetGroupTempValue(context, "PlayMode", 0, {}) --当前的敲击模式是哪一种
	ScriptLib.SetGroupTempValue(context, "LastBeatType", 0, {})
	--设置鼓的SGV
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.drum, "SGV_DrumAxis", 0)
end

--演奏成功
function LF_SinglePlaySuccess(context)
	ScriptLib.PrintContextLog(context, "##[DrumSingle]:演奏成功")
	ScriptLib.EndTimeAxis(context, "MusicPlay")
	LF_ResetBeatMark(context)
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.drum, {OPTION.SINGLE}) 
	ScriptLib.ShowReminder(context, defs.reminder_success)
	ScriptLib.SetGroupVariableValue(context, "Finished", 1)
end

--演奏失败
function LF_SinglePlayFail(context)
	ScriptLib.PrintContextLog(context, "##[DrumSingle]:演奏失败")
	ScriptLib.EndTimeAxis(context, "MusicPlay")
	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Drum_Play_Start", 0)
	LF_ResetBeatMark(context)
	--失败则初始化操作台
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.drum, {OPTION.SINGLE}) 
	ScriptLib.ShowReminder(context, defs.reminder_fail)
end