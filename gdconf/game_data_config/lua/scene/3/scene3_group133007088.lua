-- 基础信息
local base_info = {
	group_id = 133007088
}

-- Trigger变量
local defs = {
	region_Enter = 88008,
	region_Leave = 88009,
	group_id = 133007088,
	gallery_id = 12002,
	monsterWave = {18004,18006,18004,18004,18006,18004},
	prospect_id = {88002,88003,88004},
	gadget_1 = 0
}

-- DEFS_MISCS
local Pursina = {
	{88002,88005},	
	{88003,88006},
	{88004,88007},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 88001, gadget_id = 70800054, pos = { x = 2856.005, y = 207.398, z = -26.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 88002, gadget_id = 70800044, pos = { x = 2863.915, y = 207.200, z = -18.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 88003, gadget_id = 70800044, pos = { x = 2843.240, y = 211.256, z = -43.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 88004, gadget_id = 70800044, pos = { x = 2839.095, y = 207.214, z = -23.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 88005, gadget_id = 70800047, pos = { x = 2863.915, y = 208.626, z = -18.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 4 },
	{ config_id = 88006, gadget_id = 70800048, pos = { x = 2843.240, y = 212.725, z = -43.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 4 },
	{ config_id = 88007, gadget_id = 70800049, pos = { x = 2839.095, y = 208.634, z = -23.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 88008, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2856.012, y = 208.383, z = -26.571 }, area_id = 4 },
	{ config_id = 88009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2856.012, y = 208.383, z = -26.571 }, area_id = 4 },
	{ config_id = 88057, shape = RegionShape.SPHERE, radius = 12, pos = { x = 2856.012, y = 208.383, z = -26.571 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1088010, name = "SELECT_OPTION_88010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_88010", action = "action_EVENT_SELECT_OPTION_88010" },
	{ config_id = 1088011, name = "TIME_AXIS_PASS_88011", event = EventType.EVENT_TIME_AXIS_PASS, source = "looptime", condition = "", action = "action_EVENT_TIME_AXIS_PASS_88011", trigger_count = 0 },
	{ config_id = 1088012, name = "VARIABLE_CHANGE_88012", event = EventType.EVENT_VARIABLE_CHANGE, source = "refreshMonster", condition = "", action = "action_EVENT_VARIABLE_CHANGE_88012", trigger_count = 0 },
	{ config_id = 1088019, name = "VARIABLE_CHANGE_88019", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EVENT_VARIABLE_CHANGE_88019", action = "action_EVENT_VARIABLE_CHANGE_88019" },
	{ config_id = 1088056, name = "TIMER_EVENT_88056", event = EventType.EVENT_TIMER_EVENT, source = "starttime", condition = "", action = "action_EVENT_TIMER_EVENT_88056" },
	{ config_id = 1088057, name = "ENTER_REGION_88057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_88057", action = "action_EVENT_ENTER_REGION_88057" },
	{ config_id = 1088058, name = "GADGET_STATE_CHANGE_88058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88058", action = "action_EVENT_GADGET_STATE_CHANGE_88058" }
}

-- 点位
points = {
	{ config_id = 88020, pos = { x = 2877.008, y = 207.200, z = -15.329 }, rot = { x = 0.000, y = 248.643, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 88021, pos = { x = 2874.839, y = 207.200, z = -11.680 }, rot = { x = 0.000, y = 205.619, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 88022, pos = { x = 2876.912, y = 207.200, z = -10.240 }, rot = { x = 0.000, y = 226.659, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 88023, pos = { x = 2879.046, y = 207.200, z = -15.046 }, rot = { x = 0.000, y = 248.643, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 88024, pos = { x = 2873.685, y = 207.200, z = -10.178 }, rot = { x = 0.000, y = 204.197, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 88025, pos = { x = 2879.105, y = 207.200, z = -12.629 }, rot = { x = 0.000, y = 248.643, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 88026, pos = { x = 2844.365, y = 212.603, z = -61.399 }, rot = { x = 0.000, y = 357.510, z = 0.000 }, area_id = 4, tag = 4 },
	{ config_id = 88027, pos = { x = 2844.756, y = 212.408, z = -58.766 }, rot = { x = 0.000, y = 0.578, z = 0.000 }, area_id = 4, tag = 4 },
	{ config_id = 88028, pos = { x = 2841.158, y = 212.735, z = -59.917 }, rot = { x = 0.000, y = 30.990, z = 0.000 }, area_id = 4, tag = 4 },
	{ config_id = 88029, pos = { x = 2837.898, y = 212.884, z = -60.557 }, rot = { x = 0.000, y = 30.990, z = 0.000 }, area_id = 4, tag = 4 },
	{ config_id = 88030, pos = { x = 2840.550, y = 212.603, z = -57.488 }, rot = { x = 0.000, y = 30.990, z = 0.000 }, area_id = 4, tag = 4 },
	{ config_id = 88031, pos = { x = 2837.575, y = 212.557, z = -55.657 }, rot = { x = 0.000, y = 30.990, z = 0.000 }, area_id = 4, tag = 4 },
	{ config_id = 88032, pos = { x = 2828.704, y = 207.200, z = -6.014 }, rot = { x = 0.000, y = 145.642, z = 0.000 }, area_id = 4, tag = 8 },
	{ config_id = 88033, pos = { x = 2831.288, y = 207.200, z = -3.921 }, rot = { x = 0.000, y = 174.053, z = 0.000 }, area_id = 4, tag = 8 },
	{ config_id = 88034, pos = { x = 2827.688, y = 207.200, z = -9.152 }, rot = { x = 0.000, y = 145.642, z = 0.000 }, area_id = 4, tag = 8 },
	{ config_id = 88035, pos = { x = 2830.896, y = 207.200, z = -6.720 }, rot = { x = 0.000, y = 175.454, z = 0.000 }, area_id = 4, tag = 8 },
	{ config_id = 88036, pos = { x = 2829.360, y = 207.200, z = -10.256 }, rot = { x = 0.000, y = 145.642, z = 0.000 }, area_id = 4, tag = 8 },
	{ config_id = 88037, pos = { x = 2833.305, y = 207.200, z = -10.431 }, rot = { x = 0.000, y = 189.233, z = 0.000 }, area_id = 4, tag = 8 },
	{ config_id = 88038, pos = { x = 2869.894, y = 207.200, z = -16.612 }, rot = { x = 0.000, y = 207.380, z = 0.000 }, area_id = 4, tag = 16 },
	{ config_id = 88039, pos = { x = 2862.740, y = 207.200, z = -14.323 }, rot = { x = 0.000, y = 207.380, z = 0.000 }, area_id = 4, tag = 16 },
	{ config_id = 88040, pos = { x = 2842.505, y = 212.204, z = -53.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 16 },
	{ config_id = 88041, pos = { x = 2834.984, y = 212.137, z = -50.883 }, rot = { x = 0.000, y = 27.499, z = 0.000 }, area_id = 4, tag = 16 },
	{ config_id = 88042, pos = { x = 2839.266, y = 211.803, z = -48.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 16 },
	{ config_id = 88043, pos = { x = 2846.471, y = 211.823, z = -52.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 16 },
	{ config_id = 88044, pos = { x = 2843.532, y = 211.900, z = -51.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 32 },
	{ config_id = 88045, pos = { x = 2837.908, y = 212.267, z = -52.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 32 },
	{ config_id = 88046, pos = { x = 2843.152, y = 207.200, z = -14.131 }, rot = { x = 0.000, y = 146.835, z = 0.000 }, area_id = 4, tag = 32 },
	{ config_id = 88047, pos = { x = 2835.740, y = 207.200, z = -15.238 }, rot = { x = 0.000, y = 146.835, z = 0.000 }, area_id = 4, tag = 32 },
	{ config_id = 88048, pos = { x = 2836.964, y = 207.200, z = -20.558 }, rot = { x = 0.000, y = 146.835, z = 0.000 }, area_id = 4, tag = 32 },
	{ config_id = 88049, pos = { x = 2834.308, y = 207.200, z = -21.426 }, rot = { x = 0.000, y = 118.533, z = 0.000 }, area_id = 4, tag = 32 },
	{ config_id = 88050, pos = { x = 2841.037, y = 207.200, z = -18.091 }, rot = { x = 0.000, y = 190.629, z = 0.000 }, area_id = 4, tag = 64 },
	{ config_id = 88051, pos = { x = 2834.316, y = 207.200, z = -17.733 }, rot = { x = 0.000, y = 151.257, z = 0.000 }, area_id = 4, tag = 64 },
	{ config_id = 88052, pos = { x = 2869.294, y = 207.200, z = -20.503 }, rot = { x = 0.000, y = 234.976, z = 0.000 }, area_id = 4, tag = 64 },
	{ config_id = 88053, pos = { x = 2873.883, y = 207.200, z = -15.783 }, rot = { x = 0.000, y = 234.976, z = 0.000 }, area_id = 4, tag = 64 },
	{ config_id = 88054, pos = { x = 2868.865, y = 207.200, z = -12.566 }, rot = { x = 0.000, y = 234.976, z = 0.000 }, area_id = 4, tag = 64 },
	{ config_id = 88055, pos = { x = 2862.024, y = 207.200, z = -9.930 }, rot = { x = 0.000, y = 234.976, z = 0.000 }, area_id = 4, tag = 64 },
	{ config_id = 88059, pos = { x = 2852.296, y = 207.161, z = -22.756 }, rot = { x = 0.000, y = 131.123, z = 0.000 }, area_id = 4 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finalWave", value = 3, no_refresh = false },
	{ config_id = 2, name = "refreshMonster", value = 0, no_refresh = false },
	{ config_id = 3, name = "isTimeout", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1088013, name = "POOL_MONSTER_TIDE_DIE_88013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_88013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_88013", trigger_count = 0 },
		{ config_id = 1088014, name = "POOL_MONSTER_TIDE_DIE_88014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_88014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_88014", trigger_count = 0 },
		{ config_id = 1088015, name = "POOL_MONSTER_TIDE_DIE_88015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_88015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_88015", trigger_count = 0 },
		{ config_id = 1088016, name = "POOL_MONSTER_TIDE_DIE_88016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_88016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_88016", trigger_count = 0 },
		{ config_id = 1088017, name = "POOL_MONSTER_TIDE_DIE_88017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_88017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_88017", trigger_count = 0 },
		{ config_id = 1088018, name = "POOL_MONSTER_TIDE_DIE_88018", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_88018", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_88018", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 88002, 88003, 88004, 88005, 88006, 88007 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 88001, 88002, 88003, 88004 },
		regions = { 88008, 88009, 88057 },
		triggers = { "SELECT_OPTION_88010", "TIME_AXIS_PASS_88011", "VARIABLE_CHANGE_88012", "VARIABLE_CHANGE_88019", "TIMER_EVENT_88056", "ENTER_REGION_88057", "GADGET_STATE_CHANGE_88058" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_88010(context, evt)
	-- 判断是gadgetid 88001 option_id 175
	if 88001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_88010(context, evt)
	-- 将configid为 88001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 88001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_88011(context, evt)
	-- 判断剩余怪物数量是否是0.
	
	-- 如果不为0设置超时标记，返回0
	--if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
	--	ScriptLib.SetGroupVariableValue(context, "isTimeout", 1)
	--	return 0
	-- 如果为0通知刷新下一波怪物
	--else
		--如果不是最后一波，设置至下一波，否则循环到第一波
	if ScriptLib.GetGroupVariableValue(context, "refreshMonster") ~= ScriptLib.GetGroupVariableValue(context, "finalWave") then
		ScriptLib.ChangeGroupVariableValue(context, "refreshMonster", 1)
	else
		ScriptLib.SetGroupVariableValue(context, "refreshMonster", 1)	
	end
	--end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88012(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	
	
	
	--三个电桩进度全满跳出
	if ScriptLib.GetGalleryProgressScore(context, "digProgress0", defs.gallery_id)>=100 and ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 and ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 then
		return 0
	end
	--三个电桩全部没有激活跳出
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[1]) ~= GadgetState.GearStop and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
		return 0
	end
	
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 1)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 2)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 3)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 4)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 5)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 6)
	
	-- refreshMonster=1，刷第1波.A点刷新
	if ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 1 then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress0", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[1]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 1, defs.group_id, {defs.monsterWave[1]}, 0, {}, {}, {total_count=10, min_count=3, max_count=5, tag=2, fill_time=0, fill_count=0})
			return 0
		end
	-- refreshMonster=2，刷第2波.B点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 2  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 2, defs.group_id, {defs.monsterWave[2]}, 0, {}, {},  {total_count=10, min_count=3, max_count=5, tag=4, fill_time=0, fill_count=0})
			return 0
		end
	-- refreshMonster=5，刷第3波.C点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 3  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
			ScriptLib.SetGroupVariableValue(context, "refreshMonster", 1)
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 3, defs.group_id, {defs.monsterWave[3]}, 0, {}, {}, {total_count=10, min_count=3, max_count=5, tag=8, fill_time=0, fill_count=0})
			return 0
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "IsFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88019(context, evt)
	-- 停止标识为"looptime"的时间轴
	ScriptLib.EndTimeAxis(context, "looptime")
	-- 删除所有怪物
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 1)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 2)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 3)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 4)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 5)
	ScriptLib.ClearPoolMonsterTide(context, defs.group_id, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_88056(context, evt)
	-- 创建标识为"looptime"，时间节点为{60,120}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "looptime", {60,120}, true)
	
	
	-- 针对当前group内变量名为 "refreshMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "refreshMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_88057(context, evt)
	if evt.param1 ~= 88057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_88057(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,146,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88058(context, evt)
	if (evt.param2 == defs.prospect_id[1] or evt.param2 == defs.prospect_id[2] or evt.param2 == defs.prospect_id[3]) and evt.param1 == GadgetState.GearStop then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88058(context, evt)
	-- 延迟10秒后,向groupId为：133007088的对象,请求一次调用,并将string参数："starttime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133007088, "starttime", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/Dig"