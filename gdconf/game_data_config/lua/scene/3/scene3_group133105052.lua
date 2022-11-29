-- 基础信息
local base_info = {
	group_id = 133105052
}

-- Trigger变量
local defs = {
	region_Enter = 52008,
	region_Leave = 52009,
	group_id = 133105052,
	gallery_id = 12003,
	monsterWave = {18001,18003,18001,18001,18003,18001},
	prospect_id = {52002,52003,52004},
	gadget_1 = 0
}

-- DEFS_MISCS
local Pursina = {
	{52002,52005},	
	{52003,52006},
	{52004,52007},
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
	{ config_id = 52001, gadget_id = 70800054, pos = { x = 414.670, y = 201.054, z = -72.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 52002, gadget_id = 70800044, pos = { x = 399.474, y = 201.073, z = -72.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 52003, gadget_id = 70800044, pos = { x = 420.626, y = 202.028, z = -83.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 52004, gadget_id = 70800044, pos = { x = 426.164, y = 202.104, z = -68.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 52005, gadget_id = 70800047, pos = { x = 399.474, y = 201.073, z = -72.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 9 },
	{ config_id = 52006, gadget_id = 70800048, pos = { x = 420.626, y = 202.028, z = -83.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 9 },
	{ config_id = 52007, gadget_id = 70800049, pos = { x = 426.164, y = 202.104, z = -68.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 52008, shape = RegionShape.SPHERE, radius = 50, pos = { x = 418.095, y = 202.394, z = -69.561 }, area_id = 9 },
	{ config_id = 52009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 418.095, y = 202.394, z = -69.561 }, area_id = 9 },
	{ config_id = 52057, shape = RegionShape.SPHERE, radius = 12, pos = { x = 418.095, y = 202.394, z = -69.561 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1052010, name = "SELECT_OPTION_52010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_52010", action = "action_EVENT_SELECT_OPTION_52010" },
	{ config_id = 1052011, name = "TIME_AXIS_PASS_52011", event = EventType.EVENT_TIME_AXIS_PASS, source = "looptime", condition = "", action = "action_EVENT_TIME_AXIS_PASS_52011", trigger_count = 0 },
	{ config_id = 1052012, name = "VARIABLE_CHANGE_52012", event = EventType.EVENT_VARIABLE_CHANGE, source = "refreshMonster", condition = "", action = "action_EVENT_VARIABLE_CHANGE_52012", trigger_count = 0 },
	{ config_id = 1052019, name = "VARIABLE_CHANGE_52019", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EVENT_VARIABLE_CHANGE_52019", action = "action_EVENT_VARIABLE_CHANGE_52019" },
	{ config_id = 1052056, name = "TIMER_EVENT_52056", event = EventType.EVENT_TIMER_EVENT, source = "starttime", condition = "", action = "action_EVENT_TIMER_EVENT_52056" },
	{ config_id = 1052057, name = "ENTER_REGION_52057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52057", action = "action_EVENT_ENTER_REGION_52057" },
	{ config_id = 1052058, name = "GADGET_STATE_CHANGE_52058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52058", action = "action_EVENT_GADGET_STATE_CHANGE_52058" }
}

-- 点位
points = {
	{ config_id = 52020, pos = { x = 389.376, y = 201.684, z = -72.491 }, rot = { x = 0.000, y = 81.425, z = 0.000 }, area_id = 9, tag = 2 },
	{ config_id = 52021, pos = { x = 386.744, y = 201.808, z = -72.584 }, rot = { x = 0.000, y = 81.425, z = 0.000 }, area_id = 9, tag = 2 },
	{ config_id = 52022, pos = { x = 385.907, y = 201.575, z = -69.112 }, rot = { x = 0.000, y = 108.695, z = 0.000 }, area_id = 9, tag = 2 },
	{ config_id = 52023, pos = { x = 392.391, y = 201.564, z = -72.947 }, rot = { x = 0.000, y = 81.425, z = 0.000 }, area_id = 9, tag = 2 },
	{ config_id = 52024, pos = { x = 390.393, y = 201.376, z = -70.565 }, rot = { x = 0.000, y = 81.425, z = 0.000 }, area_id = 9, tag = 2 },
	{ config_id = 52025, pos = { x = 393.244, y = 201.330, z = -68.110 }, rot = { x = 0.000, y = 136.192, z = 0.000 }, area_id = 9, tag = 2 },
	{ config_id = 52026, pos = { x = 422.390, y = 202.740, z = -93.916 }, rot = { x = 0.000, y = 8.063, z = 0.000 }, area_id = 9, tag = 4 },
	{ config_id = 52027, pos = { x = 424.167, y = 202.503, z = -92.413 }, rot = { x = 0.000, y = 8.063, z = 0.000 }, area_id = 9, tag = 4 },
	{ config_id = 52028, pos = { x = 420.137, y = 202.814, z = -94.028 }, rot = { x = 0.000, y = 8.063, z = 0.000 }, area_id = 9, tag = 4 },
	{ config_id = 52029, pos = { x = 417.543, y = 203.188, z = -94.524 }, rot = { x = 0.000, y = 30.705, z = 0.000 }, area_id = 9, tag = 4 },
	{ config_id = 52030, pos = { x = 419.491, y = 202.841, z = -90.987 }, rot = { x = 0.000, y = 8.063, z = 0.000 }, area_id = 9, tag = 4 },
	{ config_id = 52031, pos = { x = 415.285, y = 203.013, z = -90.937 }, rot = { x = 0.000, y = 8.063, z = 0.000 }, area_id = 9, tag = 4 },
	{ config_id = 52032, pos = { x = 434.873, y = 202.281, z = -59.082 }, rot = { x = 0.000, y = 217.386, z = 0.000 }, area_id = 9, tag = 8 },
	{ config_id = 52033, pos = { x = 433.333, y = 202.271, z = -59.823 }, rot = { x = 0.000, y = 232.543, z = 0.000 }, area_id = 9, tag = 8 },
	{ config_id = 52034, pos = { x = 437.191, y = 201.859, z = -62.445 }, rot = { x = 0.000, y = 246.840, z = 0.000 }, area_id = 9, tag = 8 },
	{ config_id = 52035, pos = { x = 432.643, y = 202.062, z = -61.436 }, rot = { x = 0.000, y = 216.528, z = 0.000 }, area_id = 9, tag = 8 },
	{ config_id = 52036, pos = { x = 438.825, y = 201.421, z = -64.544 }, rot = { x = 0.000, y = 277.753, z = 0.000 }, area_id = 9, tag = 8 },
	{ config_id = 52037, pos = { x = 436.082, y = 201.811, z = -64.889 }, rot = { x = 0.000, y = 262.735, z = 0.000 }, area_id = 9, tag = 8 },
	{ config_id = 52038, pos = { x = 396.176, y = 201.209, z = -73.425 }, rot = { x = 0.000, y = 59.947, z = 0.000 }, area_id = 9, tag = 16 },
	{ config_id = 52039, pos = { x = 394.509, y = 201.124, z = -70.626 }, rot = { x = 0.000, y = 104.382, z = 0.000 }, area_id = 9, tag = 16 },
	{ config_id = 52040, pos = { x = 421.356, y = 202.524, z = -86.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9, tag = 16 },
	{ config_id = 52041, pos = { x = 417.275, y = 202.479, z = -87.740 }, rot = { x = 0.000, y = 30.219, z = 0.000 }, area_id = 9, tag = 16 },
	{ config_id = 52042, pos = { x = 422.934, y = 202.438, z = -84.685 }, rot = { x = 0.000, y = 330.046, z = 0.000 }, area_id = 9, tag = 16 },
	{ config_id = 52043, pos = { x = 422.936, y = 202.612, z = -86.891 }, rot = { x = 0.000, y = 338.254, z = 0.000 }, area_id = 9, tag = 16 },
	{ config_id = 52044, pos = { x = 425.290, y = 202.544, z = -85.656 }, rot = { x = 0.000, y = 317.504, z = 0.000 }, area_id = 9, tag = 32 },
	{ config_id = 52045, pos = { x = 419.672, y = 202.275, z = -86.600 }, rot = { x = 0.000, y = 25.758, z = 0.000 }, area_id = 9, tag = 32 },
	{ config_id = 52046, pos = { x = 430.045, y = 201.877, z = -69.794 }, rot = { x = 0.000, y = 275.911, z = 0.000 }, area_id = 9, tag = 32 },
	{ config_id = 52047, pos = { x = 431.067, y = 202.203, z = -64.481 }, rot = { x = 0.000, y = 221.720, z = 0.000 }, area_id = 9, tag = 32 },
	{ config_id = 52048, pos = { x = 435.072, y = 201.746, z = -69.704 }, rot = { x = 0.000, y = 275.911, z = 0.000 }, area_id = 9, tag = 32 },
	{ config_id = 52049, pos = { x = 428.233, y = 202.225, z = -67.579 }, rot = { x = 0.000, y = 275.911, z = 0.000 }, area_id = 9, tag = 32 },
	{ config_id = 52050, pos = { x = 433.092, y = 201.874, z = -70.932 }, rot = { x = 0.000, y = 299.630, z = 0.000 }, area_id = 9, tag = 64 },
	{ config_id = 52051, pos = { x = 429.217, y = 202.282, z = -66.464 }, rot = { x = 0.000, y = 299.630, z = 0.000 }, area_id = 9, tag = 64 },
	{ config_id = 52052, pos = { x = 393.084, y = 201.309, z = -68.480 }, rot = { x = 0.000, y = 117.694, z = 0.000 }, area_id = 9, tag = 64 },
	{ config_id = 52053, pos = { x = 396.031, y = 201.151, z = -72.681 }, rot = { x = 0.000, y = 65.729, z = 0.000 }, area_id = 9, tag = 64 },
	{ config_id = 52054, pos = { x = 395.868, y = 201.145, z = -69.361 }, rot = { x = 0.000, y = 65.729, z = 0.000 }, area_id = 9, tag = 64 },
	{ config_id = 52055, pos = { x = 392.297, y = 201.339, z = -71.682 }, rot = { x = 0.000, y = 93.634, z = 0.000 }, area_id = 9, tag = 64 },
	{ config_id = 52059, pos = { x = 415.124, y = 201.185, z = -76.118 }, rot = { x = 0.000, y = 343.650, z = 0.000 }, area_id = 9 }
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
		{ config_id = 1052013, name = "POOL_MONSTER_TIDE_DIE_52013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_52013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_52013", trigger_count = 0 },
		{ config_id = 1052014, name = "POOL_MONSTER_TIDE_DIE_52014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_52014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_52014", trigger_count = 0 },
		{ config_id = 1052015, name = "POOL_MONSTER_TIDE_DIE_52015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_52015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_52015", trigger_count = 0 },
		{ config_id = 1052016, name = "POOL_MONSTER_TIDE_DIE_52016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_52016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_52016", trigger_count = 0 },
		{ config_id = 1052017, name = "POOL_MONSTER_TIDE_DIE_52017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_52017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_52017", trigger_count = 0 },
		{ config_id = 1052018, name = "POOL_MONSTER_TIDE_DIE_52018", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_52018", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_52018", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 52002, 52003, 52004, 52005, 52006, 52007 }
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
		gadgets = { 52001, 52002, 52003, 52004 },
		regions = { 52008, 52009, 52057 },
		triggers = { "SELECT_OPTION_52010", "TIME_AXIS_PASS_52011", "VARIABLE_CHANGE_52012", "VARIABLE_CHANGE_52019", "TIMER_EVENT_52056", "ENTER_REGION_52057", "GADGET_STATE_CHANGE_52058" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_52010(context, evt)
	-- 判断是gadgetid 52001 option_id 175
	if 52001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_52010(context, evt)
	-- 将configid为 52001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_52011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_52012(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_52019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "IsFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52019(context, evt)
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
function action_EVENT_TIMER_EVENT_52056(context, evt)
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
function condition_EVENT_ENTER_REGION_52057(context, evt)
	if evt.param1 ~= 52057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52057(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,146,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52058(context, evt)
	if (defs.prospect_id[1] ~= evt.param2 and defs.prospect_id[2] ~= evt.param2 and defs.prospect_id[3] ~= evt.param2) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52058(context, evt)
	-- 延迟10秒后,向groupId为：133105052的对象,请求一次调用,并将string参数："starttime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105052, "starttime", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/Dig"