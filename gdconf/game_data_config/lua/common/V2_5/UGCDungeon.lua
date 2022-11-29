--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	UGCDungeon 神工天巧活动
||	RelVersion    ||	2.5
||	Owner         ||	chao.jin
||	Description   ||	2.5版本，UGC地城使用的LUA，用于处理地城内的挑战开启和结算 玩家脱离卡死 玩家编辑 试玩地城的流程
||	LogName       ||    ##[UGCDungeon]
||	Protection    ||	通过玩家LeaveRegion和EnterRegion来处理玩家断线重连的问题
=====================================================================================================================
--defs相关配置
	defs = {
		is_offical = false, --是否是官方关
		startpoint = 1009, --起点ConfigID
		connect_region = , --包裹整个地城的region，处理断线重连问题
		synchronizer = , --70350430的同步SLC物件ConfigID
	}
--misc相关配置
	--官方关对应的配置，非官方关可以填空List
	offical_settings = {
		max_lives = 10, --可以使用的命数
		has_dest = 1,	--是否需要到达终点，如果没有终点则填0
		time = 300,		--时间限制，如果填0表示没有时间限制
		coins_collect = 0,--需要收集的金币数量，如果填0表示没有金币需要收集
		coins_max = 0,	--场上金币总数，用在挑战的显示里
		editors = {1028}, --进入编辑模式的操作台ConfigID
	}
	--房间和空气墙映射关系的配置
    airwall_graph = {
        [1] = {next_room = 2, airwall_suite = 3}, --房间1连接的房间，中间空气墙所在的Suite
        [2] = {next_room = 3, airwall_suite = 4}, --房间2连接的房间，中间空气墙所在的Suite
        [3] = {next_room = 0, airwall_suite = 0}, --0表示没有下一个房间，不存在空气墙
    },
    room_infos = {
        {        
            room_cur = 1, 
            room_next = 2, 
            wall_connect = 2013,--到下一个房间的空气墙
            region_enter = 0,--弱网拦截用的
            region_wall_enter = 0,--弱网拦截用的空气墙 
            point_safe = 0 --传送安全点的configID
        },
    }
--=================================================================================================================]]
--全局变量
--关卡内需要使用的挑战ID
local UGC_Challenges = 
{
	FC_limited = 2005001, 	--显示时间的父挑战ID
	FC_unlimited = 2005013,	--不显示时间的父挑战ID
	FC_offical = 2005014, --官方关的父挑战
	CC_dest = 2005002,	--到达终点的子挑战ID
	CC_coin = 2005003,	--收集金币的子挑战ID
	CC_coin_sums = 2005011,	--官方关显示金币总量的子挑战
}
--关卡所在的状态管理
local DUNGEON_STATE = 
{
	NONE= 0, --默认配置
	TESTING = 1, --全局试玩状态
	QUIT_TEST = 2, --从全局试玩退出
	PLAYING = 3, --正常游玩
	EDITING = 4, --编辑模式下
	PLAY_END = 5,--正常游玩状态结束
	OUT_STUCK = 6,--脱离卡死状态
}

--关卡运行的逻辑类型，在GroupLoad时决定
local DUNGEON_MODE = {
	EDIT_MODE = 0, --编辑地城的模式
	PLAY_MODE = 1	--游玩地城的模式
}
--玩家所在状态
local PLAYER_STATE = 
{
	NORMAL = 0, --正常受伤害
	IMMUNE = 1, --免疫状态
}
--操作台GadgetID
local WORKTOP ={
	START_POINT = 70350353, --启动挑战
	EDITOR = 70360002, --进编辑模式
}

--===================================================================================================================
--需要初始化的Triggers
local UGC_Triggers = {
	{ config_id = 9100001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ config_id = 9100002, name = "gadget_create",  event = EventType.EVENT_GADGET_CREATE, source = "",condition = "",action = "action_gadget_create",trigger_count= 0},
	{ config_id = 9100003, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	{ config_id = 9100004, name = "challenge_fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 }, 
	{ config_id = 9100005, name = "challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 }, 
	{ config_id = 9100006, name = "variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_variable_change", action = "", trigger_count = 0, tag = "888" },
	{ config_id = 9100007, name = "variable_dest", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_variable_dest", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 9100008, name = "dungeon_test", event = EventType.EVENT_CUSTOM_DUNGEON_START, source = "", condition = "", action = "action_dungeon_test", trigger_count = 0,},
	{ config_id = 9100009, name = "dungeon_test_exit", event = EventType.EVENT_CUSTOM_DUNGEON_EXIT_TRY, source = "", condition = "", action = "action_dungeon_test_exit", trigger_count = 0,},
    { config_id = 9100010, name = "time_axis_pass",  event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    { config_id = 9100011, name = "restore_challenge",  event = EventType.EVENT_CUSTOM_DUNGEON_OFFICIAL_RESTART, source = "", condition = "", action = "action_restore_challenge", trigger_count = 0},
--  { config_id = 9100012, name = "group_will_unload",  event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
	{ config_id = 9100013, name = "player_disconnect",  event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_player_disconnect", trigger_count = 0},
	{ config_id = 9100014, name = "player_reconnect",  event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_player_reconnect", trigger_count = 0},
	{ config_id = 9100015, name = "out_stuck",  event = EventType.EVENT_CUSTOM_DUNGEON_OUT_STUCK, source = "", condition = "", action = "action_out_stuck", trigger_count = 0},
	{ config_id = 9100016, name = "out_stuck_end",  event = EventType.EVENT_CUSTOM_DUNGEON_REACTIVE, source = "", condition = "", action = "action_out_stuck_end", trigger_count = 0},
	{ config_id = 9100017, name = "restart_challenge",  event = EventType.EVENT_CUSTOM_DUNGEON_RESTART, source = "", condition = "", action = "action_restart_challenge", trigger_count = 0},
	{ config_id = 9100018, name = "guide_finish",  event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_guide_finish", trigger_count = 0},
	{ config_id = 9100019, name = "all_avatar_die",  event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_all_avatar_die", trigger_count = 0},
	{ config_id = 9100020, name = "player_enter_region",  event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_player_enter_region", trigger_count = 0},
	{ config_id = 9100021, name = "coin_die",  event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_coin_die", trigger_count = 0},

}

--===================================================================================================================
--group内部evt事件
--初始化Group需要的内容
function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: GroupLoad")
--	LF_ResetAllTempvalues(context)
	--如果引导任务完成了，那么做开挑战前的预处理
	if LF_CheckGuideQuestFinished(context) then
		ScriptLib.CreateGadget(context, {config_id = defs.startpoint})
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, 2035)
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, 2007)
		for k,editor in pairs(offical_settings.editors) do
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, editor)
		end
--		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 6)
--		LF_IsAllowUseSkill(context)
		LF_ModifyConfigsBeforeStart(context)
		ScriptLib.SetGroupTempValue(context, "DungeonMode", DUNGEON_MODE.PLAY_MODE, {})
	else
	--不可以挑战时关闭操作台交互
		LF_ModifyConfigsUnready(context)
		ScriptLib.SetGroupTempValue(context, "GuideCoinDie", 0, {})
--[[	开局不能传送	
		local uidList = ScriptLib.GetSceneUidList(context)
		--任务没完成时 开局传送到固定点
		for k,v in pairs(points) do
			if v.config_id == 2051 then 
				ScriptLib.TransPlayerToPos(context, {uid_list = {uidList[1]}, pos = v.pos, radius = 1, rot = v.rot, is_skip_ui = false})
			end
		end
]]
		ScriptLib.SetGroupTempValue(context, "DungeonMode", DUNGEON_MODE.EDIT_MODE, {})
	end
	return 0
end

--处理引导任务是否完成
function LF_CheckGuideQuestFinished(context)
	
--[[
	local guide_finished = ScriptLib.GetExhibitionAccumulableData(context, uidList[1], 11201101)
	if guide_finished > 0 then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Guide Finished")
		return true
	else
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Guide not Finished")
		return false
	end
	return false
]]
	local uidList = ScriptLib.GetSceneUidList(context)
	if QuestState.FINISHED == ScriptLib.GetQuestStateByUid(context, uidList[1], 7166207) then
		return true
	end
	return false
end

--引导任务完成给Group发完成消息
function action_guide_finish(context, evt)
	if evt.param1 == 7166204 then
		--引导任务第一次完成，开启操作台的交互内容
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Open Eidtor")
		for k,v in pairs(offical_settings.editors) do
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, v, {330})
		end
	end
	if evt.param1 == 7166207  then
		--引导任务第二次完成，此时玩家在起点位置，关闭操作台,创建起点
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Close Eidtor")
		ScriptLib.CreateGadget(context, {config_id = defs.startpoint})
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, 2009) --移除操作台引导点
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, 2010)
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 2)
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 3)
		for k,editor in pairs(offical_settings.editors) do
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, editor)
		end
--		local uidList = ScriptLib.GetSceneUidList(context)
--因为使用了新的接口所以不使用陈列室处理了		
--		ScriptLib.AddExhibitionAccumulableData(context, uidList[1], "Activity_UGCDungeon_Guide", 1)
		LF_ModifyConfigsBeforeStart(context)
	end
	return 0
end

--记录一下金币死亡
function action_coin_die(context, evt)
	if 2005 ~= evt.param1 then
		return -1
	end
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Guide Coin Die")
	ScriptLib.SetGroupTempValue(context, "GuideCoinDie", 1, {})
	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 3)
--[[	
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Close Eidtor")
	for k,v in pairs(offical_settings.editors) do
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, v, {})
	end
]]
	return 0
end

--##直接操作ConfigID，不走事件触发了
--起点操作台创建,加一个操作数
function action_gadget_create(context, evt)
	local gadget_id = evt.param2
--	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Gadget Create"..gadget_id)
	--初始化起点操作台交互
	if gadget_id == WORKTOP.START_POINT then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Init Select Option")
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, evt.param1, {175})
		return 0
	end
	--初始化官方关操作台交互
	if gadget_id == WORKTOP.EDITOR then 
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Init Editor Option")
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, evt.param1, {330})
		return 0
	end
	return 0
end

--玩家和起点交互，起挑战
--evt.param1 ConfigID
--evt.param2 WorktopID
function action_select_option(context, evt)
--	local cfg_id = evt.param1
--	local selection = evt.param2
	local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
	--和起点交互的操作
	if gadget_id == WORKTOP.START_POINT then 
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player Start Option")
		LF_StartPlayProgress(context)
		ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, evt.param1, 175)
		LF_OpenStartPoint(context)
		return 0
	end
	--进入编辑模式交互
	if gadget_id == WORKTOP.EDITOR then 
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Start Edit")
		ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.EDITING, {})
		local room_id = 1
		for key,editor in pairs(offical_settings.editors) do
			if editor == evt.param1 then
				room_id = key
			end
		end
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Edit Room"..room_id)
		if not LF_CheckGuideQuestFinished(context) then
			--引导地城里的操作,通知任务增加
			ScriptLib.AddQuestProgress(context, "2450580021")
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, 2009) --移除操作台引导点
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 2)
			ScriptLib.EnterCustomDungeonOfficialEdit(context,room_id)
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Add Quest Progress")
			return 0
		end
		LF_PauseAllChallenges(context)
		ScriptLib.EnterCustomDungeonOfficialEdit(context,room_id)	
	end
	return 0
end


--处理进入试玩模式时开启挑战
function action_dungeon_test(context, evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon Test Start")
	LF_ModifyConfigsBeforeStart(context)
	ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.TESTING, {})
--	LF_IsAllowUseSkill(context) --处理禁用技能
	return 0
end

--退出试玩模式，重置挑战进度
function action_dungeon_test_exit(context, evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon Test Exit")
	ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.QUIT_TEST, {})	--标记从全局试玩模式退出
	LF_ModifyConfigsUnready(context)
	ScriptLib.StopChallenge(context, 1, 0)
	return 0
end

--地城断线处理
function action_group_will_unload(context, evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon Unload")
	return 0
end

--保底，所有玩家死亡退出地城
function action_all_avatar_die(context, evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: All Avatar Die")
	ScriptLib.CauseDungeonFail(context)
	return 0
end

--玩家断线离开地城
function action_player_disconnect(context, evt)
--	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player Disconnect")
	if evt.param1 ~= defs.connect_region then
		return 0
	end
	--玩家在正常游玩过程中断线
	if DUNGEON_STATE.PLAYING == ScriptLib.GetGroupTempValue(context, "DungeonState", {}) then
		if 0 == ScriptLib.GetGroupTempValue(context, "OutStucking", {}) then 
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player Disconnect in Playing")
			LF_PauseAllChallenges(context)
		end
	end
	--玩家在脱离卡死状态
	if DUNGEON_STATE.OUT_STUCK == ScriptLib.GetGroupTempValue(context, "DungeonState", {}) then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player out Stucking")
		return 0
	end
	if DUNGEON_STATE.PLAY_END == ScriptLib.GetGroupTempValue(context, "DungeonState", {})  then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player Disconnect in Play End, Knock out")
		ScriptLib.CauseDungeonFail(context)
	end
	return 0
end

--检测挑战状态,挑战失败的可能只有超时
function LF_IsChallenging(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Check Challenge State")
	local reach_dest = ScriptLib.GetGroupTempValue(context, "Dest", {})
	local time_setting = ScriptLib.GetGroupTempValue(context, "TimeSet", {})
	local has_dest = LF_GetDestSettings(context) --是否需要到达终点
	--如果在游玩过程中，断线，挑战失败，手动计算是否超时
	local time_already_used = ScriptLib.GetGroupTempValue(context, "ChallengeUsedTime", {})
	local current_scene_time = ScriptLib.GetSceneTimeSeconds(context)	--当前进行检测的时间
	local last_start_time = ScriptLib.GetGroupTempValue(context, "LastStartTime", {}) --获取上次挑战开始的时间
	local time_total_used = time_already_used + current_scene_time - last_start_time
	ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Time Used"..time_total_used)
	--如果没有时间限制，那么认为在挑战中
	if time_setting == 0 then
		--如果不需要到终点
		if has_dest == 0 then
				ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Challenge Going")
				return true
		else
		--需要到终点,因为金币吃不完不能结算，所以直接判到了没有
			if reach_dest ~= 0 then
				ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Challenge Finshed")
				return false
			else
				ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Challenge Going")
				return true
			end
		end
	else
		--剩余时间还剩10s以内直接踢出去
		if (time_setting - time_total_used) < 10 then
			return false
		end
		--如果不需要到终点
		if has_dest == 0 then
			ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Challenge Going")
			return true
		else
		--需要到终点,因为金币吃不完不能结算，所以直接判到了没有
			if reach_dest == 1 then
				ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Challenge Finished")
				return false
			else
				ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Challenge Going")
				return true
			end
		end
	end
end

--玩家重新连接回到地城
function action_player_reconnect(context, evt)
	--检验是不是整个区域
	if evt.param1 ~= defs.connect_region then
		return 0
	end
	--如果是脱离卡死状态就不处理
	if 0 ~= ScriptLib.GetGroupTempValue(context, "OutStucking", {}) then
		return 0
	end
	--如果是在重新挑战的过程中就不处理
	if 0 ~= ScriptLib.GetGroupTempValue(context, "Restarting", {}) then 
		return 0
	end
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player reconnect")
	--玩家在正常游玩过程中断线
	if DUNGEON_STATE.PLAYING == ScriptLib.GetGroupTempValue(context, "DungeonState", {}) then
		if LF_CheckGuideQuestFinished(context) then
			LF_StartChallenge(context)
		end
	end
	return 0
end

--玩家点击脱离卡死
function action_out_stuck(context, evt)
	--如果不在游玩状态 如果不在测试状态
	local state = ScriptLib.GetGroupTempValue(context, "DungeonState",{})
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player press P & State is"..state)
	if DUNGEON_STATE.PLAYING ~= state and DUNGEON_STATE.TESTING ~= state then 
		return 0
	end
	--0血的时候防止跳结算
	local uidList = ScriptLib.GetSceneUidList(context)
	if ScriptLib.GetTeamServerGlobalValue(context, uidList[1], "SGV_UGCDungeon_CurLife") <= 0 then
		return 0
	end
	ScriptLib.SetGroupTempValue(context, "OutStucking", 1, {})
	LF_PauseAllChallenges(context)
	local room_cur = ScriptLib.GetGroupTempValue(context, "CurRoom", {})
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player in Room"..room_cur)
	local point_id = 0
	local trans_point = {}
	for room_id,infos in pairs(room_infos) do
		--找到安全点的位置
		if room_cur == infos.room_cur then
			point_id = infos.point_safe
		end
	end
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Safe Point"..point_id)
	for k, point_info in pairs(points) do
		--找到安全点的信息
		if point_info.config_id == point_id then
			trans_point = point_info
		end
	end
--	ScriptLib.SetGroupTempValue(context, "DungeonState",DUNGEON_STATE.OUT_STUCK, {})
	ScriptLib.TransPlayerToPos(context, {uid_list = {uidList[1]}, pos = trans_point.pos, radius = 1, rot = trans_point.rot, is_skip_ui=false})
	return 0
end

--玩家脱离卡死传送结束,玩家只有在测试状态和游玩状态可以触发
function action_out_stuck_end(context,evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player transport end")
	ScriptLib.SetGroupTempValue(context, "OutStucking", 0, {})
--	ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.PLAYING, {})
	LF_StartChallenge(context)
	return 0
end

--玩家重新挑战关卡
function action_restart_challenge(context,evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player restart")
	LF_ClearModifiers(context)
	LF_ModifyConfigsBeforeStart(context)
	ScriptLib.SetGroupTempValue(context, "Restarting", 1, {})
	return 0
end

--玩家进入区域,更新玩家所处的空间信息
function action_player_enter_region(context,evt)
	for room_id,infos in pairs(room_infos) do
		--玩家进入开门区域
		if infos.region_enter == evt.param1 then
			if infos.region_wall_enter ~= 0 then
				ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Open Enter Wall")
				ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, infos.region_wall_enter)
			end
		end
		if infos.region_self == evt.param1 then
			ScriptLib.SetGroupTempValue(context, "CurRoom", infos.room_cur, {})
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Enter Room"..room_id)
		end
	end
	return 0
end

--离开编辑模式起挑战
function action_restore_challenge(context, evt)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Restore All Challenge")
	--离开编辑模式,重新标记为挑战中
	ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.PLAYING ,{})

	--记录上一次挑战开始时间,引导完成才会起挑战
	if LF_CheckGuideQuestFinished(context) then
		LF_StartChallenge(context)
	else
		--如果金币没被吃，再增加引导点			
		if 1 ~= ScriptLib.GetGroupTempValue(context, "GuideCoinDie", {}) then
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 3)
		end
	end
	return 0 
end

--挑战超时结束的时候处理地城失败
--evt.source_name = challenge_index
--evt.param1 = challenge_id
function action_challenge_fail(context, evt)
	--如果是从全局试玩退出来，就不走结算
	--编辑模式下的挑战失败，不对其做处理
	if DUNGEON_MODE.EDIT_MODE == ScriptLib.GetGroupTempValue(context, "DungeonMode", {}) then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon under editing Return")
		return 0
	end
	--游玩模式下的挑战失败，判断当前的游玩状态
	if DUNGEON_MODE.PLAY_MODE == ScriptLib.GetGroupTempValue(context, "DungeonMode", {}) then
		--如果是从编辑模式触发的，不走结算
		if DUNGEON_STATE.EDITING == ScriptLib.GetGroupTempValue(context, "DungeonState", {}) then 
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: EDITING INTERRUPT ")
			return 0
		end
		--如果是从退出试玩模式触发的，不走结算
		if DUNGEON_STATE.QUIT_TEST == ScriptLib.GetGroupTempValue(context, "DungeonState", {}) then 
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: EDITING INTERRUPT ")
			return 0
		end
		if LF_IsChallenging(context) then
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Fail But Still Challenging ")
			return 0
		end
		if evt.param1 == UGC_Challenges.FC_limited or evt.param1 == UGC_Challenges.FC_unlimited or evt.param1 == UGC_Challenges.FC_offical then
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon play end ")
			ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.PLAY_END, {})
			return 0
		end
	end
	return 0
end

--挑战如果成功就处理地城成功
function action_challenge_success(context, evt)
	--编辑模式下的挑战成功，不对其做处理
	if DUNGEON_MODE.EDIT_MODE == ScriptLib.GetGroupTempValue(context, "DungeonMode", {}) then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon under editing Return")
		return 0
	end
	--游玩模式下的挑战成功，标记现在是游玩结束状态
	if DUNGEON_MODE.PLAY_MODE == ScriptLib.GetGroupTempValue(context, "DungeonMode", {}) then
		--父挑战结算
		if evt.param1 == UGC_Challenges.FC_limited or evt.param1 == UGC_Challenges.FC_unlimited or evt.param1 == UGC_Challenges.FC_offical then
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon play end ")
			ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.PLAY_END, {})
		end
	end
	return 0
end


--==============================================================================================
--吃金币相关的处理
--吃金币对应的SLC，因为金币不在Group内，在起挑战后走SLC
function SLC_UGC_CoinDie(context)
	--结算金币数量和时间
	local num_coins = ScriptLib.GetGroupTempValue(context, "NumCoins", {})
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:[SLC]  Current Coins"..(num_coins+1))
	ScriptLib.SetGroupTempValue(context, "NumCoins", num_coins+1, {})
	return 0
end

--统计金币数量,增加金币挑战的进度
function condition_variable_change(context, evt)
	if evt.source_name ==  "NumCoins" and evt.param1 ~= 0 then
		local uidList = ScriptLib.GetSceneUidList(context)
		ScriptLib.AddExhibitionReplaceableData(context, uidList[1], "Activity_UGCDungeon_CoinNums", 1)
		local coins = ScriptLib.GetExhibitionReplaceableData(context, uidList[1], 11201102)
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Coins Added, Exhibition"..coins)
		return true
	end
	return false
end

--==============================================================================================
--到达终点相关的处理
--到达终点时Gadget调用的ServerLuaCall,因为终点是自由摆放所以走Gadget的SLC
--如果配置了金币挑战且金币没有吃够，那么不走结算，弹一个Reminder
function SLC_UGC_ArriveDest(context)
	ScriptLib.PrintContextLog(context,"##UGCDugenon:[SLC] Arrive Dest")
	local num_coins = ScriptLib.GetGroupTempValue(context, "NumCoins", {})
	local coin_settings = LF_GetCoinSettings(context)
    if coin_settings[1] == 0 then
        ScriptLib.ChangeGroupTempValue(context,"Dest",1,{})
    else
    	--官方关不处理终点提示
    	if defs.is_offical then 
    		ScriptLib.ChangeGroupTempValue(context,"Dest",1,{})
    	else
        	if num_coins < coin_settings[1] then    --金币没有到通关条件
				if LF_GetDestSettings(context) ~= 0 then --如果设置了需要到终点才会弹提示
            		ScriptLib.ShowReminder(context, 400131)
				end
        	else    --金币满足通关条件
	       	 	ScriptLib.ChangeGroupTempValue(context,"Dest",1,{})
        	end
        end
	end
	return 0
end

--用来触发到达终点的事件
function condition_variable_dest(context, evt)
	if evt.source_name ==  "Dest" and evt.param1 >= 1  then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Arrive Dest")
		local uidList = ScriptLib.GetSceneUidList(context)
		ScriptLib.AddExhibitionReplaceableData(context, uidList[1], "Activity_UGCDungeon_Arrive", 1)
		local dest= ScriptLib.GetExhibitionReplaceableData(context, uidList[1], 11201103)
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dest Exhibition Value"..dest)
		return true
	end
	return false
end
--======================================================
--开启挑战
function LF_StartChallenge(context)
	--检测一下现在能不能开挑战，不能开就回退
	if not LF_CanStartChallenge(context) then
		return 0
	end
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Start challenge")
	LF_RefreshLastStartTime(context)
--	LF_IsAllowUseSkill(context) --处理禁用技能
	local has_dest = LF_GetDestSettings(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Get Finish Point_"..has_dest)
	local coin_settings = LF_GetCoinSettings(context)
	local time_setting = LF_GetTimeSettings(context)
	local challenge_time = LF_GetRemainTime(context)
	local score_dest_success = 8
	local score_coin_success = 2
	local father_challenge = UGC_Challenges.FC_limited
	if coin_settings[1] == 0 then	--没有配置金币挑战,那么到达终点的挑战拉满
		score_dest_success = 10
	end
	if has_dest == 0 then
		score_coin_success = 10
	end 
	--如果没有配置挑战时间，那么给一个默认时间限制，不然挑战起来会有问题,父挑战必然有时间，用一个不显示挑战时间的父挑战替换
	if time_setting == 0 then
		challenge_time = 43200
		father_challenge = UGC_Challenges.FC_unlimited
	else
		father_challenge = UGC_Challenges.FC_limited
	end
	--官方关补丁
	if defs.is_offical then
		father_challenge = UGC_Challenges.FC_offical
		score_dest_success = 10
		score_coin_success = 2
	end

	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Get Challenge Time_"..challenge_time.."_Coins_"..coin_settings[1])
	ScriptLib.CreateFatherChallenge(context, 1, father_challenge, challenge_time, {success = 10, fail = 5})
	--到达终点的子挑战，没有设置就不起挑战
	if has_dest ~= 0 then
		ScriptLib.AttachChildChallenge(context, 1,  UGC_Challenges.CC_dest, UGC_Challenges.CC_dest, {challenge_time, 3, 666,1},{},{success = score_dest_success,fail = 5}) --限时到达	
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Attach Time Challenge")
	end
	--如果没有设置金币，就不起这个子挑战
	if coin_settings[1] ~= 0 then
		--官方关特殊补丁
		local current_coins = ScriptLib.GetGroupTempValue(context, "NumCoins", {})
		if defs.is_offical then 
			--官方关的上限是999所以不处理恢复的过程，直接带初始进度就行
			ScriptLib.AttachChildChallenge(context, 1, UGC_Challenges.CC_coin_sums,  UGC_Challenges.CC_coin_sums,  {challenge_time,3,888, 999,1,0,current_coins},{},{success = score_coin_success,fail = 1}) --收集普通纹章
		else
			--检查现在的金币进度，如果比上限大，就把初始进度置为上限-1
			local coin_init = current_coins
			local coin_left = 0
			if current_coins < coin_settings[1] then 
				coin_init = current_coins
			else
				coin_left = current_coins - coin_settings[1] + 1
				coin_init = coin_settings[1] - 1
			end
			ScriptLib.AttachChildChallenge(context, 1, UGC_Challenges.CC_coin,  UGC_Challenges.CC_coin,  {challenge_time,3,888,coin_settings[1],1,coin_settings[2],coin_init},{},{success = score_coin_success,fail = 1}) --收集普通纹章
			if coin_left > 0 then
				local uidList = ScriptLib.GetSceneUidList(context)
				ScriptLib.ClearExhibitionReplaceableData(context, uidList[1], "Activity_UGCDungeon_CoinNums")
				if (coin_init-1) >= 0 then
					ScriptLib.AddExhibitionReplaceableData(context, uidList[1], "Activity_UGCDungeon_CoinNums", (coin_init-1))
				end
				ScriptLib.SetGroupTempValue(context,"NumCoins", coin_init,{})
				for i=1,coin_left do
					ScriptLib.ChangeGroupTempValue(context,"NumCoins",1,{})
				end
			end
		end
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Attach Coin Challenge")
	end
	ScriptLib.StartFatherChallenge(context,1)
	--如果不是在试玩状态，那么就记录现在是游玩状态
	if DUNGEON_STATE.TESTING ~= ScriptLib.GetGroupTempValue(context, "DungeonState", {}) then
		ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.PLAYING, {})
	end
--[[
	--把挑战的进度加回去	
	if coin_settings[1] ~= 0 then 
		local current_coins = ScriptLib.GetGroupTempValue(context, "NumCoins", {})
		local uidList = ScriptLib.GetSceneUidList(context)
		if current_coins > 0 then
			ScriptLib.SetGroupTempValue(context, "NumCoins",0, {})
			ScriptLib.ClearExhibitionReplaceableData(context, uidList[1], "Activity_UGCDungeon_CoinNums")
			for i=1,current_coins do
				ScriptLib.ChangeGroupTempValue(context,"NumCoins",1,{})
			end
		end
	end
]]
	ScriptLib.SetGroupTempValue(context, "Restarting", 0, {})
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Challenge Start")
end

--挂起当前所有挑战并且更新已经消耗的时间信息
function LF_PauseAllChallenges(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Pause All Challenge")
    --需要计时的状态则更新剩余时间
    if LF_GetTimeSettings(context) ~= 0 then
        local time_already_used = ScriptLib.GetGroupTempValue(context, "ChallengeUsedTime", {})
        local current_scene_time = ScriptLib.GetSceneTimeSeconds(context)	--当前发起暂停的时间
		local last_start_time = ScriptLib.GetGroupTempValue(context, "LastStartTime", {}) --获取上次挑战开始的时间
		local time_total_used = time_already_used + current_scene_time - last_start_time
		ScriptLib.PrintContextLog(context,"##[UGCDungeon] : [TIME] Current Scene Time"..current_scene_time.." Last Start Time "..last_start_time.." Time Total Used "..time_total_used)
		ScriptLib.SetGroupTempValue(context, "ChallengeUsedTime",time_total_used, {}) --更新已经使用掉的时间
		ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Refresh Used Time")
    end
    --暂离挑战
	ScriptLib.PauseChallenge(context, 1)
end

--设置是否可以使用技能
function LF_IsAllowUseSkill(context)
--	local uid_list = ScriptLib.GetSceneUidList(context)
--	if defs.is_offical then
		ScriptLib.SetIsAllowUseSkill(context, 1)
--		return 0
--	end
--	local can_use_skill = ScriptLib.GetCurrentCustomDungeonForbidSkill(context)
--	if can_use_skill == 0 then
--		ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Allow Skill")
--		ScriptLib.SetIsAllowUseSkill(context, 1)
--		ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_ForbidSkill", 0)
--	else
--		ScriptLib.PrintContextLog(context,"##[UGCDungeon] : Forbid Skill")
--		ScriptLib.SetIsAllowUseSkill(context, 0)
--		ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_ForbidSkill", 1)
--	end
	return 0
end

--获得剩余的挑战时间
function LF_GetRemainTime(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Get Remain Time")
	local time_used = ScriptLib.GetGroupTempValue(context, "ChallengeUsedTime", {})
	local time_limit = LF_GetTimeSettings(context)
	local time_remain = 0
	if time_limit ~= 0 then
		time_remain = time_limit - time_used
	end
	--如果时间小于0就返回一个1让挑战失败重新开始
	if time_remain <= 0 then
		time_remain = 1
	end
	return time_remain
end

--更新LastStartTime为当前的SceneTime
function LF_RefreshLastStartTime(context)
	local current_scene_time = ScriptLib.GetSceneTimeSeconds(context)
	ScriptLib.SetGroupTempValue(context, "LastStartTime", current_scene_time, {})
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: [TIME] Refresh Last Start Time"..current_scene_time)
end

--打开起点和操作台交互
function LF_OpenOperators(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Open Start Point")
	ScriptLib.SetGadgetStateByConfigId(context, defs.startpoint, 0)
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.startpoint, {175}) then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Open Start Point Fail")
	end
	--官方关重置所有操作台
	if defs.is_offical then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Open Eidtor")
		for k,v in pairs(offical_settings.editors) do
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, v, {330})
		end
	end
end

--关闭起点和操作台
function LF_CloseOperators(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Close Start Point")
	--202是发光且没有阻挡的关闭状态
	ScriptLib.SetGadgetStateByConfigId(context, defs.startpoint, 202)
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.startpoint, {})
	--官方关重置所有操作台
	if defs.is_offical then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Close Eidtor")
		for k,v in pairs(offical_settings.editors) do
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, v, {})
		end
	end
end

--===============================================================================================
--获取金币的配置数量，返回List
function LF_GetCoinSettings(context)
    ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Get Coin Settings")
	local coins_collect = 0
	local coins_max = 0
	if defs.is_offical then
        --如果是官方关,直接获取
		coins_collect = offical_settings.coins_collect
		coins_max = offical_settings.coins_max
	else
    	--玩家自定义关卡，手动获取
		local ugc_params = ScriptLib.GetCurrentCustomDungeonParamVec(context)
		coins_collect = ugc_params[2]
        coins_max = ScriptLib.GetCustomDungeonCoinNum(context)
	end
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Coin Collect_"..coins_collect.."_Coin Max_"..coins_max)
    return {coins_collect, coins_max}
end

--获取需要配置的时间信息，如果没有时间限制则返回0
function LF_GetTimeSettings(context)
    ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Get Time Settings")
    if defs.is_offical then --返回官方配置的时间
		ScriptLib.SetGroupTempValue(context, "TimeSet", offical_settings.time, {}) 
        return offical_settings.time
    else    --返回玩家配置的时间
        local ugc_params = ScriptLib.GetCurrentCustomDungeonParamVec(context)
		if ugc_params[1] ~= nil then
			ScriptLib.SetGroupTempValue(context, "TimeSet", ugc_params[1], {}) 
        	return ugc_params[1]
		end
    end
end

--获取终点配置
function LF_GetDestSettings(context)
    ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Get Dest Settings")
	local has_dest = 0
	if defs.is_offical then
        --如果是官方关,直接获取
		has_dest = offical_settings.has_dest
	else
    	--玩家自定义关卡，手动获取
		local ugc_params = ScriptLib.GetCurrentCustomDungeonParamVec(context)
		has_dest = ugc_params[4]
	end
	return has_dest
end

--检测地城的配置是否存在
function LF_CanStartChallenge(context)
    ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Checking")
    --如果是官方地城，那么直接合法
    if defs.is_offical then
        ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Check Offical Success")
        return true
    end
    --不是官方地城，检测配置，没有配置就是非法状态
    local ugc_params = ScriptLib.GetCurrentCustomDungeonParamVec(context)
	if #ugc_params < 1 or ugc_params[1] == nil then
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Check Setting Failed")
		return false
	end
    return true
end



--重置所有的临时变量
function LF_ResetAllTempvalues(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Reset All Temp Values to 0")
	ScriptLib.SetGroupTempValue(context, "RestroeChallenge", 0, {})
	local uidList = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetGroupTempValue(context, "NumCoins", 0, {}) --初始化金币计数
	ScriptLib.ClearExhibitionReplaceableData(context, uidList[1], "Activity_UGCDungeon_CoinNums")
	ScriptLib.ClearExhibitionReplaceableData(context, uidList[1], "Activity_UGCDungeon_Arrive")
	ScriptLib.SetGroupTempValue(context, "Dest", 0, {}) --初始化到达终点计数
	ScriptLib.SetGroupTempValue(context, "DungeonState", DUNGEON_STATE.NONE, {})   --初始化地城状态记录
	ScriptLib.SetGroupTempValue(context, "PlayerState", PLAYER_STATE.NORMAL, {})   --初始化玩家状态记录
    ScriptLib.SetGroupTempValue(context, "LastStartTime", 0, {})  --记录上一次挑战开始时间
    ScriptLib.SetGroupTempValue(context, "ChallengeUsedTime", 0, {}) --记录挑战已经消耗的时间
	ScriptLib.SetGroupTempValue(context, "CurRoom", 1, {}) --记录当前房间为1
	ScriptLib.SetGroupTempValue(context, "OutStucking", 0, {}) --记录现在正在脱离卡死
end

--开始游玩的主流程
function LF_StartPlayProgress(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Start Play")
    if not LF_CanStartChallenge(context) then
        return 0
    end
	LF_StartChallenge(context)
	return 0
end

--玩家在起点时的处理流程，用于直接进入地城时游玩和进入全局试玩模式的变量处理
function LF_ModifyConfigsBeforeStart(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Modify Configs Before Start")
	LF_ResetAllTempvalues(context) --初始化所有变量
	LF_OpenOperators(context) --打开操作台
	LF_AirwallOnStart(context) --处理空气墙
	LF_InitLifeBar(context) --初始化血条
end

--玩家在编辑模式、区域试玩模式、退出全局试玩模式时需要进行的处理
function LF_ModifyConfigsUnready(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Modify Configs When Dungeon Unready")
	LF_OpenAllAirwalls(context) --打开所有空气墙
	LF_CloseOperators(context) --关闭起点和操作台
	LF_HideLifeBar(context) --隐藏血条
end

--受击并且扣命数
--被弹幕命中时的SLC
function SLC_UGC_HitByBullet(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Be Hitted By Bullet")
	LF_BeHit(context,1)
	return 0
end

--被地刺命中时的SLC
function SLC_UGC_HitBySpike(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Be Hitted By Spike")
	LF_BeHit(context,1)
	return 0
end

--被打中扣命数
function LF_BeHit(context, damage)
	--如果在受击免疫状态就不会再扣血，直接返回
	if LF_IsImmune(context) then 
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Player Immune State Return")
        return 0
	end
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Be Hitted Damage "..damage)
	local uid_list = ScriptLib.GetSceneUidList(context)
	local cur_lives = ScriptLib.GetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_CurLife")
	local new_lives = cur_lives - damage
	if new_lives <= 0 then 
		ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_CurLife", 0)
		ScriptLib.EndFatherChallenge(context, 1)
		return 0
	end
	--受击开启一个2s的无敌时间
    LF_StartImmune(context)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_CurLife", new_lives)
	return 0
end

--处理玩家在收到一次伤害后，2s内不会再次收到伤害的逻辑
--检查现在是否处于一个受击免疫的状态
function LF_IsImmune(context)
	if PLAYER_STATE.IMMUNE == ScriptLib.GetGroupTempValue(context, "PlayerState", {}) then 
		return true
	end
	return false
end

--开启免疫，并且开启一个时间轴处理免疫时间
function LF_StartImmune(context)
    ScriptLib.PrintContextLog(context,"##[UGCDungeon]: IMMUNE START")
	ScriptLib.SetGroupTempValue(context, "PlayerState", PLAYER_STATE.IMMUNE, {})
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_Immune", 1)
	ScriptLib.InitTimeAxis(context,"IMMUNE_AXIS", {2}, false)
end

--开启清理Modifier的信号
function LF_ClearModifiers(context)
    ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Clear Modifiers")
    local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_CanAttachModifier", 1)
	ScriptLib.InitTimeAxis(context,"CLEAR_MODIFIER_AXIS", {1}, false)
end

--开启清理Modifier的信号
function LF_OpenStartPoint(context)
    ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Clear Modifiers")
	ScriptLib.InitTimeAxis(context,"OPEN_START_POINT", {0.2}, false)
end

function action_time_axis_pass(context,evt)
    --免疫的时间结束了
    if evt.source_name == "IMMUNE_AXIS" then
        ScriptLib.PrintContextLog(context,"##[UGCDungeon]: IMMUNE END")
        local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_Immune", 0)
        ScriptLib.SetGroupTempValue(context, "PlayerState", PLAYER_STATE.NORMAL, {})
    end
    --清理Modifier的时间结束
    if evt.source_name == "CLEAR_MODIFIER_AXIS" then
        ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Clear Modifiers End")
        local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_CanAttachModifier", 0)
    end

    --打开起点的碰撞
    if evt.source_name == "OPEN_START_POINT" then
        ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Clear Modifiers End")
		ScriptLib.SetGadgetStateByConfigId(context, defs.startpoint, 201)
    end
--[[
	if evt.source_name == "SYNC_AXIS" then
		ScriptLib.ChangeGroupTempValue(context,"SyncAxisTime",1,{})
		local sync_axis_time = ScriptLib.GetGroupTempValue(context, "SyncAxisTime", {})
		local sync_gadget_time = ScriptLib.GetGroupTempValue(context, "SyncGadgetTime", {})
		if math.abs(sync_axis_time - sync_gadget_time) > 20 then
			ScriptLib.CauseDungeonFail(context)
		end
	end
]]
    return 0
end

--试玩状态下的命数不显示
function LF_HideLifeBar(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Hide LifeBar")
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_MaxLife", 0)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_CurLife", 0)
end

--命数初始化
function LF_InitLifeBar(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Init Life Bar")
	--预留一个拿到玩家设置的生命数量的接口，处理设置的血量
	local ugc_params = ScriptLib.GetCurrentCustomDungeonParamVec(context)
	local init_life = 10
    if defs.is_offical then --官方关
        init_life = offical_settings.max_lives
    else
        init_life = ugc_params[3]
    end
	--初始化玩家的SGV，用来处理玩家在地城里的命数，这两个SGV通过SGVRegister文件注册
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_MaxLife", init_life)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_UGCDungeon_CurLife", init_life)
	return 0
end

--处理成功和失败
function LF_UGCSuccess(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon Success & Quit")
	ScriptLib.CauseDungeonSuccess(context)
	return 0
end

function LF_UGCFail(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Dungeon Fail & Quit")
	ScriptLib.CauseDungeonFail(context)
	return 0
end

--区域试玩状态下的空气墙处理，此时打开所有空气墙
function LF_OpenAllAirwalls(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Create Air Wall On Group Load")
	--认为现在是编辑模式，把所有空气墙打开(不可通过)
	for room_id,infos in pairs(room_infos) do
		if room_infos.wall_connect ~= 0 then 
			ScriptLib.CreateGadget(context,{config_id = infos.wall_connect})
--			ScriptLib.SetGadgetStateByConfigId(context, infos.wall_connect, 0)
		end
		if infos.region_wall_enter ~= 0 then 
			ScriptLib.CreateGadget(context,{config_id = infos.region_wall_enter})
--			ScriptLib.SetGadgetStateByConfigId(context, infos.region_wall_enter, 0)
		end
	end
end

--开挑战时重新处理空气墙的逻辑
function LF_AirwallOnStart(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]:Create Air Wall")
	local open_rooms = ScriptLib.GetCustomDungeonOpenRoomVec(context)
	--关闭所有空气墙,换了结构之后重新处理空气墙
--[[
	for k,v in pairs(open_rooms) do
		ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Room Open"..v)
		if airwall_graph[v].next_room ~= 0 and airwall_graph[v].next_room ~= nil then
			if LF_CheckNextRoomOpen(context, airwall_graph[v].next_room) then 
				ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, airwall_graph[v].airwall_suite)
				ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Close AirWall"..(airwall_graph[v].airwall_suite))
			end
		end
	end
	for id,room in pairs(room_infos) do
		if room.wall_enter ~= 0 then 
			ScriptLib.CreateGadget(context,{config_id = room.region_wall_enter})
		end
	end
]]
	for k,room_id in pairs(open_rooms) do
		if LF_CheckNextRoomOpen(context, room_infos[room_id].room_next) then 
			if room_infos[room_id].wall_connect ~= 0 then
--				ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Wall Close"..room_id)
				ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, room_infos[room_id].wall_connect)
--				ScriptLib.SetGadgetStateByConfigId(context, room_infos[room_id].wall_connect, 201)
			end
		else
			if room_infos[room_id].wall_connect ~= 0 then
--				ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Wall Open"..room_id) 
				ScriptLib.CreateGadget(context,{config_id = room_infos[room_id].wall_connect})
--				ScriptLib.SetGadgetStateByConfigId(context, room_infos[room_id].wall_connect, 0)
			end
		end
		if room_infos[room_id].region_wall_enter ~= 0 then 
--			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Wall Open"..room_id)
			ScriptLib.CreateGadget(context,{config_id = room_infos[room_id].region_wall_enter})
--			ScriptLib.SetGadgetStateByConfigId(context, room_infos[room_id].region_wall_enter, 0)
		end
	end
end

function LF_CheckNextRoomOpen(context, room_id)
	--官方关的是全部打开
	if defs.is_offical then 
		return true
	end
	local open_rooms = ScriptLib.GetCustomDungeonOpenRoomVec(context)
	for k,v in pairs(open_rooms) do 
		if v == room_id then
			ScriptLib.PrintContextLog(context,"##[UGCDungeon]: RoomOpen"..room_id)
			return true
		end
	end
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Room Not Open"..room_id)
	return false
end

--[[暂时不生效
--同步握手相关的处理
--吃金币对应的SLC，因为金币不在Group内，在起挑战后走SLC
function SLC_UGC_Synchronizer(context)
	--同步次数
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Gadget Synchronize time")
	ScriptLib.ChangeGroupTempValue(context,"SyncGadgetTime",1,{})
	return 0
end

--开始同步
function LF_StartSynchronize(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: Start Synchronize")
	ScriptLib.CreateGadget(context,{config_id = defs.synchronizer})
	ScriptLib.SetGroupTempValue(context, "SyncGadgetTime", 0, {})
	ScriptLib.SetGroupTempValue(context, "SyncAxisTime", 0, {})
	ScriptLib.InitTimeAxis(context,"SYNC_AXIS", {1}, true)
end

--停止同步
function LF_EndSynchronize(context)
	ScriptLib.PrintContextLog(context,"##[UGCDungeon]: End Synchronize")
	ScriptLib.RemoveEntityByConfigId(context,base_info.group_id,EntityType.GADGET, defs.synchronizer)
	ScriptLib.SetGroupTempValue(context, "SyncGadgetTime", 0, {})
	ScriptLib.SetGroupTempValue(context, "SyncAxisTime", 0, {})
	ScriptLib.EndTimeAxis(context,"SYNC_AXIS")
end
]]

function UGC_Initialize()
	for k,v in pairs(UGC_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

UGC_Initialize()