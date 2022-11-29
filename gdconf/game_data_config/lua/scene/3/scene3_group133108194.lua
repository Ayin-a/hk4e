-- 基础信息
local base_info = {
	group_id = 133108194
}

-- Trigger变量
local defs = {
	region_Enter = 194008,
	region_Leave = 194009,
	group_id = 133108194,
	gallery_id = 12007,
	monsterWave = {18008,18009,18008,18009,18008,18009},
	prospect_id = {194002,194003,194004}
}

-- DEFS_MISCS
local Pursina = {
	{194002,194005},	
	{194003,194006},
	{194004,194007},
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
	{ config_id = 194001, gadget_id = 70800054, pos = { x = -143.082, y = 200.748, z = -903.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 194002, gadget_id = 70800044, pos = { x = -129.047, y = 200.997, z = -907.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 194003, gadget_id = 70800044, pos = { x = -146.331, y = 200.611, z = -918.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 194004, gadget_id = 70800044, pos = { x = -137.221, y = 201.104, z = -888.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 194005, gadget_id = 70800047, pos = { x = -129.047, y = 200.997, z = -907.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 194006, gadget_id = 70800048, pos = { x = -146.331, y = 200.611, z = -918.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 },
	{ config_id = 194007, gadget_id = 70800049, pos = { x = -137.221, y = 201.104, z = -888.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 194008, shape = RegionShape.SPHERE, radius = 50, pos = { x = -144.552, y = 201.705, z = -906.437 }, area_id = 7 },
	{ config_id = 194009, shape = RegionShape.SPHERE, radius = 50, pos = { x = -144.552, y = 201.705, z = -906.437 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1194010, name = "SELECT_OPTION_194010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194010", action = "action_EVENT_SELECT_OPTION_194010" },
	{ config_id = 1194011, name = "TIME_AXIS_PASS_194011", event = EventType.EVENT_TIME_AXIS_PASS, source = "looptime", condition = "", action = "action_EVENT_TIME_AXIS_PASS_194011", trigger_count = 0 },
	{ config_id = 1194012, name = "VARIABLE_CHANGE_194012", event = EventType.EVENT_VARIABLE_CHANGE, source = "refreshMonster", condition = "", action = "action_EVENT_VARIABLE_CHANGE_194012", trigger_count = 0 },
	{ config_id = 1194019, name = "VARIABLE_CHANGE_194019", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EVENT_VARIABLE_CHANGE_194019", action = "action_EVENT_VARIABLE_CHANGE_194019" },
	{ config_id = 1194056, name = "TIMER_EVENT_194056", event = EventType.EVENT_TIMER_EVENT, source = "starttime", condition = "", action = "action_EVENT_TIMER_EVENT_194056" },
	{ config_id = 1194057, name = "GADGET_STATE_CHANGE_194057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194057", action = "action_EVENT_GADGET_STATE_CHANGE_194057" }
}

-- 点位
points = {
	{ config_id = 194020, pos = { x = -120.455, y = 201.391, z = -908.037 }, rot = { x = 0.000, y = 287.582, z = 0.000 }, area_id = 7, tag = 2 },
	{ config_id = 194021, pos = { x = -122.469, y = 201.293, z = -909.357 }, rot = { x = 0.000, y = 310.170, z = 0.000 }, area_id = 7, tag = 2 },
	{ config_id = 194022, pos = { x = -118.606, y = 201.555, z = -907.687 }, rot = { x = 0.000, y = 287.582, z = 0.000 }, area_id = 7, tag = 2 },
	{ config_id = 194023, pos = { x = -116.853, y = 201.857, z = -909.486 }, rot = { x = 0.000, y = 287.582, z = 0.000 }, area_id = 7, tag = 2 },
	{ config_id = 194024, pos = { x = -122.532, y = 201.848, z = -904.099 }, rot = { x = 0.000, y = 217.151, z = 0.000 }, area_id = 7, tag = 2 },
	{ config_id = 194025, pos = { x = -116.376, y = 201.912, z = -905.789 }, rot = { x = 0.000, y = 265.498, z = 0.000 }, area_id = 7, tag = 2 },
	{ config_id = 194026, pos = { x = -148.379, y = 200.561, z = -935.204 }, rot = { x = 0.000, y = 11.588, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 194027, pos = { x = -146.453, y = 200.644, z = -930.347 }, rot = { x = 0.000, y = 337.167, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 194028, pos = { x = -150.282, y = 200.715, z = -931.590 }, rot = { x = 0.000, y = 11.588, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 194029, pos = { x = -152.977, y = 200.778, z = -931.257 }, rot = { x = 0.000, y = 21.408, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 194030, pos = { x = -146.530, y = 200.660, z = -927.576 }, rot = { x = 0.000, y = 11.588, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 194031, pos = { x = -151.496, y = 200.754, z = -929.340 }, rot = { x = 0.000, y = 30.018, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 194032, pos = { x = -131.445, y = 200.974, z = -878.332 }, rot = { x = 0.000, y = 211.672, z = 0.000 }, area_id = 7, tag = 8 },
	{ config_id = 194033, pos = { x = -138.139, y = 201.108, z = -878.068 }, rot = { x = 0.000, y = 157.890, z = 0.000 }, area_id = 7, tag = 8 },
	{ config_id = 194034, pos = { x = -134.190, y = 200.987, z = -877.994 }, rot = { x = 0.000, y = 211.672, z = 0.000 }, area_id = 7, tag = 8 },
	{ config_id = 194035, pos = { x = -137.373, y = 201.092, z = -880.369 }, rot = { x = 0.000, y = 211.672, z = 0.000 }, area_id = 7, tag = 8 },
	{ config_id = 194036, pos = { x = -133.992, y = 201.200, z = -882.268 }, rot = { x = 0.000, y = 211.672, z = 0.000 }, area_id = 7, tag = 8 },
	{ config_id = 194037, pos = { x = -130.290, y = 201.115, z = -880.529 }, rot = { x = 0.000, y = 211.672, z = 0.000 }, area_id = 7, tag = 8 },
	{ config_id = 194038, pos = { x = -124.345, y = 201.314, z = -911.262 }, rot = { x = 0.000, y = 296.767, z = 0.000 }, area_id = 7, tag = 16 },
	{ config_id = 194039, pos = { x = -123.727, y = 201.382, z = -905.587 }, rot = { x = 0.000, y = 296.767, z = 0.000 }, area_id = 7, tag = 16 },
	{ config_id = 194040, pos = { x = -146.778, y = 200.681, z = -924.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 16 },
	{ config_id = 194041, pos = { x = -152.493, y = 200.603, z = -921.404 }, rot = { x = 0.000, y = 57.601, z = 0.000 }, area_id = 7, tag = 16 },
	{ config_id = 194042, pos = { x = -149.571, y = 200.616, z = -920.104 }, rot = { x = 0.000, y = 31.861, z = 0.000 }, area_id = 7, tag = 16 },
	{ config_id = 194043, pos = { x = -143.236, y = 200.594, z = -922.312 }, rot = { x = 0.000, y = 327.452, z = 0.000 }, area_id = 7, tag = 16 },
	{ config_id = 194044, pos = { x = -147.639, y = 200.648, z = -921.047 }, rot = { x = 0.000, y = 13.024, z = 0.000 }, area_id = 7, tag = 32 },
	{ config_id = 194045, pos = { x = -146.431, y = 200.651, z = -922.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 32 },
	{ config_id = 194046, pos = { x = -134.318, y = 201.195, z = -884.714 }, rot = { x = 0.000, y = 196.160, z = 0.000 }, area_id = 7, tag = 32 },
	{ config_id = 194047, pos = { x = -133.308, y = 201.089, z = -880.786 }, rot = { x = 0.000, y = 196.160, z = 0.000 }, area_id = 7, tag = 32 },
	{ config_id = 194048, pos = { x = -136.497, y = 201.081, z = -882.133 }, rot = { x = 0.000, y = 196.160, z = 0.000 }, area_id = 7, tag = 32 },
	{ config_id = 194049, pos = { x = -137.217, y = 201.087, z = -885.038 }, rot = { x = 0.000, y = 196.160, z = 0.000 }, area_id = 7, tag = 32 },
	{ config_id = 194050, pos = { x = -133.958, y = 201.201, z = -885.932 }, rot = { x = 0.000, y = 180.986, z = 0.000 }, area_id = 7, tag = 64 },
	{ config_id = 194051, pos = { x = -140.189, y = 201.018, z = -885.914 }, rot = { x = 0.000, y = 154.962, z = 0.000 }, area_id = 7, tag = 64 },
	{ config_id = 194052, pos = { x = -120.749, y = 201.599, z = -911.141 }, rot = { x = 0.000, y = 282.017, z = 0.000 }, area_id = 7, tag = 64 },
	{ config_id = 194053, pos = { x = -120.975, y = 201.397, z = -907.772 }, rot = { x = 0.000, y = 282.017, z = 0.000 }, area_id = 7, tag = 64 },
	{ config_id = 194054, pos = { x = -125.340, y = 201.241, z = -905.323 }, rot = { x = 0.000, y = 282.017, z = 0.000 }, area_id = 7, tag = 64 },
	{ config_id = 194055, pos = { x = -125.368, y = 201.167, z = -909.993 }, rot = { x = 0.000, y = 282.017, z = 0.000 }, area_id = 7, tag = 64 },
	{ config_id = 194058, pos = { x = -137.512, y = 200.678, z = -904.820 }, rot = { x = 0.000, y = 283.154, z = 0.000 }, area_id = 7 }
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
		{ config_id = 1194013, name = "POOL_MONSTER_TIDE_DIE_194013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_194013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_194013", trigger_count = 0 },
		{ config_id = 1194014, name = "POOL_MONSTER_TIDE_DIE_194014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_194014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_194014", trigger_count = 0 },
		{ config_id = 1194015, name = "POOL_MONSTER_TIDE_DIE_194015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_194015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_194015", trigger_count = 0 },
		{ config_id = 1194016, name = "POOL_MONSTER_TIDE_DIE_194016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_194016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_194016", trigger_count = 0 },
		{ config_id = 1194017, name = "POOL_MONSTER_TIDE_DIE_194017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_194017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_194017", trigger_count = 0 },
		{ config_id = 1194018, name = "POOL_MONSTER_TIDE_DIE_194018", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_194018", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_194018", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 194002, 194003, 194004, 194005, 194006, 194007 }
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
		gadgets = { 194001, 194002, 194003, 194004 },
		regions = { 194008, 194009 },
		triggers = { "SELECT_OPTION_194010", "TIME_AXIS_PASS_194011", "VARIABLE_CHANGE_194012", "VARIABLE_CHANGE_194019", "TIMER_EVENT_194056", "GADGET_STATE_CHANGE_194057" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_194010(context, evt)
	-- 判断是gadgetid 194001 option_id 175
	if 194001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_194010(context, evt)
	-- 将configid为 194001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_194011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_194012(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_194019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "IsFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_194019(context, evt)
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
function action_EVENT_TIMER_EVENT_194056(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_194057(context, evt)
	if (defs.prospect_id[1] ~= evt.param2 and defs.prospect_id[2] ~= evt.param2 and defs.prospect_id[3] ~= evt.param2) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194057(context, evt)
	-- 延迟10秒后,向groupId为：133108194的对象,请求一次调用,并将string参数："starttime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133108194, "starttime", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/Dig"