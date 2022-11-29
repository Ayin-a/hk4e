-- 基础信息
local base_info = {
	group_id = 133008669
}

-- Trigger变量
local defs = {
	region_Enter = 669008,
	region_Leave = 669009,
	group_id = 133008669,
	gallery_id = 12006,
	monsterWave = {18005,18007,18005,18007,18005,18007},
	prospect_id = {669002,669003,669004}
}

-- DEFS_MISCS
local Pursina = {
	{669002,669005},	
	{669003,669006},
	{669004,669007},
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
	{ config_id = 669001, gadget_id = 70800054, pos = { x = 908.717, y = 200.235, z = -1151.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 669002, gadget_id = 70800044, pos = { x = 883.876, y = 200.185, z = -1159.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 669003, gadget_id = 70800044, pos = { x = 898.910, y = 200.595, z = -1146.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 669004, gadget_id = 70800044, pos = { x = 912.015, y = 200.037, z = -1165.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 669005, gadget_id = 70800047, pos = { x = 883.876, y = 200.185, z = -1159.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 669006, gadget_id = 70800048, pos = { x = 898.910, y = 200.595, z = -1146.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 669007, gadget_id = 70800049, pos = { x = 912.015, y = 200.037, z = -1165.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 669057, gadget_id = 70360103, pos = { x = 901.113, y = 199.425, z = -1166.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 669058, gadget_id = 70360103, pos = { x = 897.067, y = 199.439, z = -1164.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 669059, gadget_id = 70360103, pos = { x = 892.850, y = 199.413, z = -1163.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 669060, gadget_id = 70310017, pos = { x = 903.335, y = 201.753, z = -1134.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 669061, gadget_id = 70310017, pos = { x = 923.746, y = 200.884, z = -1158.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 669008, shape = RegionShape.SPHERE, radius = 50, pos = { x = 906.091, y = 200.421, z = -1148.015 }, area_id = 10 },
	{ config_id = 669009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 906.091, y = 200.421, z = -1148.015 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1669010, name = "SELECT_OPTION_669010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_669010", action = "action_EVENT_SELECT_OPTION_669010" },
	{ config_id = 1669011, name = "TIME_AXIS_PASS_669011", event = EventType.EVENT_TIME_AXIS_PASS, source = "looptime", condition = "", action = "action_EVENT_TIME_AXIS_PASS_669011", trigger_count = 0 },
	{ config_id = 1669012, name = "VARIABLE_CHANGE_669012", event = EventType.EVENT_VARIABLE_CHANGE, source = "refreshMonster", condition = "", action = "action_EVENT_VARIABLE_CHANGE_669012", trigger_count = 0 },
	{ config_id = 1669019, name = "VARIABLE_CHANGE_669019", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EVENT_VARIABLE_CHANGE_669019", action = "action_EVENT_VARIABLE_CHANGE_669019" },
	{ config_id = 1669056, name = "TIMER_EVENT_669056", event = EventType.EVENT_TIMER_EVENT, source = "starttime", condition = "", action = "action_EVENT_TIMER_EVENT_669056" },
	{ config_id = 1669062, name = "GADGET_STATE_CHANGE_669062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_669062", action = "action_EVENT_GADGET_STATE_CHANGE_669062" }
}

-- 点位
points = {
	{ config_id = 669020, pos = { x = 872.249, y = 200.229, z = -1163.431 }, rot = { x = 358.360, y = 42.099, z = 0.082 }, area_id = 10, tag = 2 },
	{ config_id = 669021, pos = { x = 874.772, y = 200.025, z = -1159.256 }, rot = { x = 359.344, y = 111.425, z = 358.495 }, area_id = 10, tag = 2 },
	{ config_id = 669022, pos = { x = 875.139, y = 200.410, z = -1165.319 }, rot = { x = 358.360, y = 42.099, z = 0.082 }, area_id = 10, tag = 2 },
	{ config_id = 669023, pos = { x = 875.034, y = 200.155, z = -1161.031 }, rot = { x = 358.775, y = 86.693, z = 358.907 }, area_id = 10, tag = 2 },
	{ config_id = 669024, pos = { x = 871.853, y = 200.106, z = -1161.849 }, rot = { x = 358.360, y = 42.099, z = 0.082 }, area_id = 10, tag = 2 },
	{ config_id = 669025, pos = { x = 876.853, y = 200.246, z = -1163.318 }, rot = { x = 358.360, y = 42.099, z = 0.082 }, area_id = 10, tag = 2 },
	{ config_id = 669026, pos = { x = 890.184, y = 201.247, z = -1141.777 }, rot = { x = 0.000, y = 79.461, z = 0.000 }, area_id = 10, tag = 4 },
	{ config_id = 669027, pos = { x = 890.863, y = 201.836, z = -1136.782 }, rot = { x = 0.000, y = 124.324, z = 0.000 }, area_id = 10, tag = 4 },
	{ config_id = 669028, pos = { x = 894.858, y = 201.778, z = -1135.510 }, rot = { x = 0.000, y = 190.217, z = 0.000 }, area_id = 10, tag = 4 },
	{ config_id = 669029, pos = { x = 888.644, y = 201.503, z = -1140.331 }, rot = { x = 0.000, y = 95.224, z = 0.000 }, area_id = 10, tag = 4 },
	{ config_id = 669030, pos = { x = 891.781, y = 202.079, z = -1135.240 }, rot = { x = 0.000, y = 158.560, z = 0.000 }, area_id = 10, tag = 4 },
	{ config_id = 669031, pos = { x = 886.049, y = 202.135, z = -1137.311 }, rot = { x = 0.000, y = 124.324, z = 0.000 }, area_id = 10, tag = 4 },
	{ config_id = 669032, pos = { x = 925.598, y = 201.365, z = -1166.735 }, rot = { x = 0.000, y = 278.203, z = 0.000 }, area_id = 10, tag = 8 },
	{ config_id = 669033, pos = { x = 922.470, y = 200.804, z = -1163.680 }, rot = { x = 0.000, y = 278.203, z = 0.000 }, area_id = 10, tag = 8 },
	{ config_id = 669034, pos = { x = 921.754, y = 200.890, z = -1167.433 }, rot = { x = 0.000, y = 310.645, z = 0.000 }, area_id = 10, tag = 8 },
	{ config_id = 669035, pos = { x = 920.596, y = 200.787, z = -1170.006 }, rot = { x = 12.825, y = 324.114, z = 0.377 }, area_id = 10, tag = 8 },
	{ config_id = 669036, pos = { x = 923.063, y = 201.018, z = -1170.713 }, rot = { x = 0.000, y = 322.373, z = 0.000 }, area_id = 10, tag = 8 },
	{ config_id = 669037, pos = { x = 924.361, y = 201.016, z = -1163.485 }, rot = { x = 0.000, y = 243.641, z = 0.000 }, area_id = 10, tag = 8 },
	{ config_id = 669038, pos = { x = 880.845, y = 200.135, z = -1163.877 }, rot = { x = 0.000, y = 28.688, z = 0.000 }, area_id = 10, tag = 16 },
	{ config_id = 669039, pos = { x = 878.625, y = 200.174, z = -1162.798 }, rot = { x = 0.000, y = 28.688, z = 0.000 }, area_id = 10, tag = 16 },
	{ config_id = 669040, pos = { x = 896.181, y = 200.617, z = -1144.565 }, rot = { x = 0.000, y = 157.338, z = 0.000 }, area_id = 10, tag = 16 },
	{ config_id = 669041, pos = { x = 893.220, y = 200.810, z = -1145.056 }, rot = { x = 0.000, y = 104.219, z = 0.000 }, area_id = 10, tag = 16 },
	{ config_id = 669042, pos = { x = 895.107, y = 200.974, z = -1140.969 }, rot = { x = 0.000, y = 157.338, z = 0.000 }, area_id = 10, tag = 16 },
	{ config_id = 669043, pos = { x = 900.150, y = 200.763, z = -1143.151 }, rot = { x = 0.000, y = 157.338, z = 0.000 }, area_id = 10, tag = 16 },
	{ config_id = 669044, pos = { x = 899.552, y = 200.974, z = -1141.662 }, rot = { x = 0.000, y = 177.521, z = 0.000 }, area_id = 10, tag = 32 },
	{ config_id = 669045, pos = { x = 893.926, y = 200.917, z = -1143.273 }, rot = { x = 0.000, y = 120.262, z = 0.000 }, area_id = 10, tag = 32 },
	{ config_id = 669046, pos = { x = 916.571, y = 200.264, z = -1164.642 }, rot = { x = 0.000, y = 274.321, z = 0.000 }, area_id = 10, tag = 32 },
	{ config_id = 669047, pos = { x = 914.946, y = 200.169, z = -1165.645 }, rot = { x = 0.000, y = 266.668, z = 0.000 }, area_id = 10, tag = 32 },
	{ config_id = 669048, pos = { x = 916.412, y = 200.359, z = -1169.331 }, rot = { x = 0.000, y = 306.552, z = 0.000 }, area_id = 10, tag = 32 },
	{ config_id = 669049, pos = { x = 909.818, y = 200.184, z = -1169.213 }, rot = { x = 0.000, y = 17.595, z = 0.000 }, area_id = 10, tag = 32 },
	{ config_id = 669050, pos = { x = 916.585, y = 200.338, z = -1167.311 }, rot = { x = 0.000, y = 286.237, z = 0.000 }, area_id = 10, tag = 64 },
	{ config_id = 669051, pos = { x = 914.259, y = 200.207, z = -1169.411 }, rot = { x = 0.000, y = 321.817, z = 0.000 }, area_id = 10, tag = 64 },
	{ config_id = 669052, pos = { x = 881.477, y = 200.087, z = -1160.773 }, rot = { x = 0.000, y = 47.557, z = 0.000 }, area_id = 10, tag = 64 },
	{ config_id = 669053, pos = { x = 882.699, y = 200.161, z = -1162.738 }, rot = { x = 0.000, y = 47.557, z = 0.000 }, area_id = 10, tag = 64 },
	{ config_id = 669054, pos = { x = 879.196, y = 200.095, z = -1160.237 }, rot = { x = 0.000, y = 47.557, z = 0.000 }, area_id = 10, tag = 64 },
	{ config_id = 669055, pos = { x = 879.895, y = 200.107, z = -1161.828 }, rot = { x = 0.000, y = 47.557, z = 0.000 }, area_id = 10, tag = 64 },
	{ config_id = 669063, pos = { x = 909.593, y = 200.172, z = -1155.618 }, rot = { x = 0.000, y = 350.617, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finalWave", value = 6, no_refresh = false },
	{ config_id = 2, name = "refreshMonster", value = 0, no_refresh = false },
	{ config_id = 3, name = "isTimeout", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1669013, name = "POOL_MONSTER_TIDE_DIE_669013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_669013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_669013", trigger_count = 0 },
		{ config_id = 1669014, name = "POOL_MONSTER_TIDE_DIE_669014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_669014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_669014", trigger_count = 0 },
		{ config_id = 1669015, name = "POOL_MONSTER_TIDE_DIE_669015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_669015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_669015", trigger_count = 0 },
		{ config_id = 1669016, name = "POOL_MONSTER_TIDE_DIE_669016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_669016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_669016", trigger_count = 0 },
		{ config_id = 1669017, name = "POOL_MONSTER_TIDE_DIE_669017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_669017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_669017", trigger_count = 0 },
		{ config_id = 1669018, name = "POOL_MONSTER_TIDE_DIE_669018", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_669018", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_669018", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 669002, 669003, 669004, 669005, 669006, 669007 }
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
		gadgets = { 669001, 669002, 669003, 669004, 669057, 669058, 669059, 669060, 669061 },
		regions = { 669008, 669009 },
		triggers = { "SELECT_OPTION_669010", "TIME_AXIS_PASS_669011", "VARIABLE_CHANGE_669012", "VARIABLE_CHANGE_669019", "TIMER_EVENT_669056", "GADGET_STATE_CHANGE_669062" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_669010(context, evt)
	-- 判断是gadgetid 669001 option_id 175
	if 669001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_669010(context, evt)
	-- 将configid为 669001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 669001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_669011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_669012(context, evt)
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
			ScriptLib.AutoPoolMonsterTide(context, 1, defs.group_id, {defs.monsterWave[1]}, 0, {}, {}, {total_count=5, min_count=3, max_count=5, tag=2, fill_time=0, fill_count=0})
			return 0
		end
	
	-- refreshMonster=2，刷第2波.AB点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 2 then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress0", defs.gallery_id)>=100 or ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[1]) ~= GadgetState.GearStop or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 2, defs.group_id, {defs.monsterWave[2]}, 0, {}, {}, {total_count=5, min_count=3, max_count=5, tag=16, fill_time=0, fill_count=0})
			return 0
		end
	
	-- refreshMonster=3，刷第3波.B点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 3  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 3, defs.group_id, {defs.monsterWave[3]}, 0, {}, {},  {total_count=5, min_count=3, max_count=5, tag=4, fill_time=0, fill_count=0})
			return 0
		end
	
	-- refreshMonster=4，刷第4波.BC点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 4  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 or ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 4, defs.group_id, {defs.monsterWave[4]}, 0, {}, {}, {total_count=5, min_count=3, max_count=5, tag=32, fill_time=0, fill_count=0})
			return 0
		end
	
	-- refreshMonster=5，刷第5波.C点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 5  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 5, defs.group_id, {defs.monsterWave[5]}, 0, {}, {}, {total_count=5, min_count=3, max_count=5, tag=8, fill_time=0, fill_count=0})
			return 0
		end
	
	
	-- refreshMonster=6，刷第6波.AC点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 6  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress0", defs.gallery_id)>=100 or ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[1]) ~= GadgetState.GearStop or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
			ScriptLib.SetGroupVariableValue(context, "refreshMonster", 1)
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 6, defs.group_id, {defs.monsterWave[6]}, 0, {}, {},  {total_count=5, min_count=3, max_count=5, tag=64, fill_time=0, fill_count=0})
			return 0
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_669019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "IsFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_669019(context, evt)
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
function action_EVENT_TIMER_EVENT_669056(context, evt)
	-- 创建标识为"looptime"，时间节点为{30,60}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "looptime", {30,60}, true)
	
	
	-- 针对当前group内变量名为 "refreshMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "refreshMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_669062(context, evt)
	if (defs.prospect_id[1] ~= evt.param2 and defs.prospect_id[2] ~= evt.param2 and defs.prospect_id[3] ~= evt.param2) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_669062(context, evt)
	-- 延迟10秒后,向groupId为：133008669的对象,请求一次调用,并将string参数："starttime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008669, "starttime", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/Dig"