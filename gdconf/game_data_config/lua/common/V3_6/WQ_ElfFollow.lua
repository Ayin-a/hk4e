--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    WQ_ElfFollow
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    用来给WQ任务中，小精灵伴飞的Require处理
--||   LogName       ||    ##[WQ_ElfFollow]
--||   Protection    ||    玩法失败refresh到suite1，中间不存档
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
--[[
local defs = {
	elf_config_id = 75001,
	pointarray_id = 110200031, --使用的点阵ID
	dis_fail_limit = 15, --跟随的最大距离限制
	dis_warning_limit = 6, --超出报警的距离
	time_fail_limit = 8,	--超出最大距离限制判的上限时间
	time_warning_cd = 5, --提示玩家跟随的CD
	slusha_type = 3, --司露莎载具状态
	reminder_follow = 400094, --提示跟随
	reminder_fail = 400113,
	reminder_success = 400112, 
	point_target = 15, --最终到达的终点ID
	end_suite = 2
}
--小精灵到达对应的Point时短暂停留，播放动画，播的动画ID
local elf_actions = {
	[1] = {wait_time = 0,action_id = 0, next_point = 4}, --目标点在点阵内的PointID 到达点阵时播放的动画ID,没有则填0
	[4] = {wait_time = 2,action_id = 0, next_point = 8},
	[8] = {wait_time = 2,action_id = 0, next_point = 12},
	[12] = {wait_time = 2,action_id = 0, next_point = 15},
	[15] = {wait_time = 2,action_id = 0, next_point = 0},
}
]]
--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0
local ElfFollow_Triggers = {
	{ name = "gadget_state_change", config_id = 8000101, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
	{ name = "time_axis_pass", config_id = 8000102, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	{ name = "platform_arrival", config_id = 8000103, event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_platform_arrival", trigger_count = 0 }
}

function ElfFollow_Initialize()
	for k,v in pairs(ElfFollow_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

ElfFollow_Initialize()

--监听小精灵Gadget的状态，切到201的时候开始玩法
function action_gadget_state_change(context, evt) 
	if evt.param2 == defs.elf_config_id and evt.param1 == 201 then 
		ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:小精灵状态改变，开始飞行玩法")
		LF_StartFollowPlay(context)
	end
	return 0
end

--定时检测距离
function action_time_axis_pass(context, evt)
--	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:触发TimeAxis")
	--提示跟随
	if evt.source_name == "WARNING_CD" then 
		ScriptLib.SetGroupTempValue(context, "IS_WARNING_CD", 0, {})
		ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:提示CD结束")
	end
	--检查玩家和小精灵距离
	if evt.source_name == "CHECK_DISTANCE" then 
		LF_CalcDist(context)
	end
	--检查玩家是否上了载具
	if evt.source_name == "CHECK_PLAYER_VEHICLE" then 
		ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:检查玩家是否上载具")
		local _host_uid = ScriptLib.GetSceneOwnerUid(context)
		if defs.slusha_type ~= ScriptLib.GetPlayerVehicleType(context, _host_uid) then 
			ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:玩家没有上载具")
			LF_FollowPlayFail(context)
		end
	end
	--小精灵继续飞行
	if evt.source_name == "ELF_FLY_AFTER_WAIT"  then 
		ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:小精灵继续飞行")
		ScriptLib.SetPlatformPointArray(context, defs.elf_config_id, defs.pointarray_id, LF_GetFlyPath(context), {route_type = 0,turn_mode = false})
	end
	return 0
end

--到达停留点
function action_platform_arrival( context, evt)
	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:小精灵到达点"..evt.param3)
	--到达终点
	if evt.param3 == defs.point_target  then
		LF_FollowPlaySuccess(context)
		return 0
	end
	if elf_actions[evt.param3] 	~= nil then 
		--小精灵播动画
		if elf_actions[evt.param3].action_id ~= 0 then
			ScriptLib.SetGadgetStateByConfigId(context, defs.elf_config_id, elf_actions[evt.param3].action_id)
		end
		--更新当前的点
		if evt.param3 ~= ScriptLib.GetGroupTempValue(context, "ELF_CUR_POINT", {base_info.group_id}) then 
			ScriptLib.SetGroupTempValue(context, "ELF_CUR_POINT", evt.param3, {})
		end
		--等待一段时间后继续飞行
		if elf_actions[evt.param3].wait_time ~= 0 then
			ScriptLib.InitTimeAxis(context, "ELF_FLY_AFTER_WAIT", {elf_actions[evt.param3].wait_time}, false)
		else
			ScriptLib.SetPlatformPointArray(context, defs.elf_config_id, defs.pointarray_id, LF_GetFlyPath(context), {route_type = 0,turn_mode = false})
		end
	end
	return 0
end

--======================================================================================================================
--LevelFunctions || 自定义函数
--开始小精灵跟随玩法
function LF_StartFollowPlay(context) 
	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:跟随玩法开始")
	--记录离开距离过远的次数
	ScriptLib.SetGroupTempValue(context, "TIME_TOO_FAR", 0, {})
	--记录是否在提示冷却中
	ScriptLib.SetGroupTempValue(context, "IS_WARNING_CD", 0, {})
	--记录小精灵移动平台当前在哪个点
	ScriptLib.SetGroupTempValue(context, "ELF_CUR_POINT", 1, {})
	--创建一个时间轴，检查规定时间内是否处于载具状态
	ScriptLib.InitTimeAxis(context, "CHECK_PLAYER_VEHICLE", {8}, false)
	--创建一个时间轴，定期计算玩家和小精灵的距离
	ScriptLib.InitTimeAxis(context, "CHECK_DISTANCE", {1}, true)
	ScriptLib.SetPlatformPointArray(context, defs.elf_config_id, defs.pointarray_id, LF_GetFlyPath(context), {route_type = 0,turn_mode = false})
end

--检查玩家和小精灵的距离
function LF_CalcDist(context)
	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:处理玩家和小精灵之间的距离")
	--计算玩家和小精灵的距离
	local dis_h2e = 100
	local uid_list = ScriptLib.GetSceneUidList(context)
	if uid_list ~= nil then 
		local _host_uid = ScriptLib.GetSceneOwnerUid(context)
		local _avatar_eid = ScriptLib.GetAvatarEntityIdByUid(context, _host_uid)
		local _avatar_pos = ScriptLib.GetPosByEntityId(context, _avatar_eid)

		local _elf_eid = ScriptLib.GetEntityIdByConfigId(context, defs.elf_config_id)
		local _elf_pos = ScriptLib.GetPosByEntityId(context, _elf_eid)
		dis_h2e = math.sqrt( (_avatar_pos.x - _elf_pos.x)^2 + (_avatar_pos.y - _elf_pos.y)^2 +(_avatar_pos.z - _elf_pos.z)^2 )
		ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:距离"..dis_h2e)
	end

	--超出提示距离
	if dis_h2e > defs.dis_warning_limit then 
		if 0 == ScriptLib.GetGroupTempValue(context, "IS_WARNING_CD", {}) then 
			ScriptLib.ShowReminder(context, defs.reminder_follow)
			ScriptLib.SetGroupTempValue(context, "IS_WARNING_CD", 1, {})
			ScriptLib.InitTimeAxis(context, "WARNING_CD", {defs.time_waring_cd}, false)
		end
	end
	--处理超出限制距离
	if dis_h2e > defs.dis_fail_limit then 
		--更新超出距离的次数
		ScriptLib.ChangeGroupTempValue(context, "TIME_TOO_FAR", 1, {})
		--计算一下
		if defs.time_fail_limit < ScriptLib.GetGroupTempValue(context, "TIME_TOO_FAR", {}) then 
			LF_FollowPlayFail(context) 
			return 0
		end 
	else
		--靠近后累计时间清零
		ScriptLib.SetGroupTempValue(context, "TIME_TOO_FAR", 0, {})
	end
end

--关闭所有时间轴
function LF_EndAllTimeAxis(context)
	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:停止所有时间轴")
	ScriptLib.EndTimeAxis(context, "IS_WARNING_CD")
	ScriptLib.EndTimeAxis(context, "CHECK_PLAYER_VEHICLE")
	ScriptLib.EndTimeAxis(context, "CHECK_DISTANCE")
end

--跟随玩法失败
function LF_FollowPlayFail(context)
	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:玩法失败")
	LF_EndAllTimeAxis(context)
	ScriptLib.ShowReminder(context, defs.reminder_fail)
	ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite=1})
end

--跟随玩法成功
function LF_FollowPlaySuccess(context)
	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:玩法成功")
	ScriptLib.ShowReminder(context, defs.reminder_success)
	LF_EndAllTimeAxis(context)
	ScriptLib.GoToGroupSuite(context, base_info.group_id, defs.end_suite)
end

--根据当前点生成飞行的路径
function LF_GetFlyPath(context)
 	ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:生成飞行路径")
	local cur_point = ScriptLib.GetGroupTempValue(context, "ELF_CUR_POINT", {})
	local fly_path = {}
	if cur_point < defs.point_target then 
		local target_point = elf_actions[cur_point].next_point
		for i=cur_point,target_point do
			table.insert(fly_path, i)
--			ScriptLib.PrintContextLog(context, "##[WQ_ElfFollow]:路径"..i)
		end
	end
	return fly_path
end

