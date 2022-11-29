-- 基础信息
local base_info = {
	group_id = 133225009
}

-- Trigger变量
local defs = {
	region_Enter = 9008,
	region_Leave = 9009,
	group_id = 133225009,
	gallery_id = 12008,
	Boss = 9056,
	monsterWave = {18011,18012,18013,18014,18015,18010},
	prospect_id = {9002,9003,9004}
}

-- DEFS_MISCS
local Pursina = {
	{9002,9005},	
	{9003,9006},
	{9004,9007},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9056, monster_id = 24010303, pos = { x = -6671.717, y = 193.542, z = -2652.739 }, rot = { x = 0.000, y = 107.136, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5009 }, pose_id = 101, area_id = 18 },
	{ config_id = 9061, monster_id = 20011101, pos = { x = -6651.459, y = 193.489, z = -2640.486 }, rot = { x = 0.000, y = 190.947, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 18 },
	{ config_id = 9062, monster_id = 20011001, pos = { x = -6645.261, y = 193.512, z = -2642.610 }, rot = { x = 0.000, y = 248.955, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 18 },
	{ config_id = 9063, monster_id = 20011001, pos = { x = -6646.515, y = 193.557, z = -2637.272 }, rot = { x = 0.000, y = 207.609, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 18 },
	{ config_id = 9064, monster_id = 21020201, pos = { x = -6645.481, y = 193.512, z = -2667.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 18 },
	{ config_id = 9065, monster_id = 21011201, pos = { x = -6668.062, y = 193.513, z = -2676.708 }, rot = { x = 0.000, y = 17.406, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 18 },
	{ config_id = 9067, monster_id = 21011201, pos = { x = -6665.916, y = 193.512, z = -2673.049 }, rot = { x = 0.000, y = 354.737, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70800055, pos = { x = -6659.789, y = 193.481, z = -2657.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 9002, gadget_id = 70800044, pos = { x = -6652.147, y = 193.481, z = -2644.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 9003, gadget_id = 70800044, pos = { x = -6646.266, y = 193.481, z = -2662.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 9004, gadget_id = 70800044, pos = { x = -6665.896, y = 193.510, z = -2669.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 9005, gadget_id = 70800047, pos = { x = -6652.147, y = 193.481, z = -2644.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 9006, gadget_id = 70800048, pos = { x = -6646.266, y = 193.481, z = -2662.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 9007, gadget_id = 70800049, pos = { x = -6665.896, y = 193.510, z = -2669.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 9008, shape = RegionShape.SPHERE, radius = 50, pos = { x = -6660.682, y = 194.433, z = -2661.605 }, area_id = 18 },
	{ config_id = 9009, shape = RegionShape.SPHERE, radius = 50, pos = { x = -6660.682, y = 194.433, z = -2661.605 }, area_id = 18 },
	{ config_id = 9066, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6660.342, y = 193.481, z = -2658.037 }, area_id = 18 },
	{ config_id = 9069, shape = RegionShape.SPHERE, radius = 20, pos = { x = -6660.682, y = 194.433, z = -2661.605 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1009010, name = "SELECT_OPTION_9010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9010", action = "action_EVENT_SELECT_OPTION_9010" },
	{ config_id = 1009011, name = "TIME_AXIS_PASS_9011", event = EventType.EVENT_TIME_AXIS_PASS, source = "looptime", condition = "", action = "action_EVENT_TIME_AXIS_PASS_9011", trigger_count = 0 },
	{ config_id = 1009012, name = "VARIABLE_CHANGE_9012", event = EventType.EVENT_VARIABLE_CHANGE, source = "refreshMonster", condition = "", action = "action_EVENT_VARIABLE_CHANGE_9012", trigger_count = 0 },
	{ config_id = 1009019, name = "VARIABLE_CHANGE_9019", event = EventType.EVENT_VARIABLE_CHANGE, source = "IsFinished", condition = "condition_EVENT_VARIABLE_CHANGE_9019", action = "action_EVENT_VARIABLE_CHANGE_9019" },
	-- boss狂暴检测
	{ config_id = 1009057, name = "VARIABLE_CHANGE_9057", event = EventType.EVENT_VARIABLE_CHANGE, source = "Boss_Enhance", condition = "condition_EVENT_VARIABLE_CHANGE_9057", action = "action_EVENT_VARIABLE_CHANGE_9057", trigger_count = 0 },
	{ config_id = 1009058, name = "GADGET_STATE_CHANGE_9058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9058", action = "action_EVENT_GADGET_STATE_CHANGE_9058", trigger_count = 0 },
	{ config_id = 1009059, name = "GADGET_STATE_CHANGE_9059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9059", action = "action_EVENT_GADGET_STATE_CHANGE_9059", trigger_count = 0 },
	{ config_id = 1009060, name = "GADGET_STATE_CHANGE_9060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9060", action = "action_EVENT_GADGET_STATE_CHANGE_9060", trigger_count = 0 },
	{ config_id = 1009066, name = "ENTER_REGION_9066", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1009068, name = "GADGET_STATE_CHANGE_9068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9068", action = "action_EVENT_GADGET_STATE_CHANGE_9068" },
	{ config_id = 1009069, name = "ENTER_REGION_9069", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9069", action = "action_EVENT_ENTER_REGION_9069" },
	-- boss狂暴检测
	{ config_id = 1009070, name = "VARIABLE_CHANGE_9070", event = EventType.EVENT_VARIABLE_CHANGE, source = "Boss_Enhance", condition = "condition_EVENT_VARIABLE_CHANGE_9070", action = "action_EVENT_VARIABLE_CHANGE_9070", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 9020, pos = { x = -6648.301, y = 193.512, z = -2639.404 }, rot = { x = 0.000, y = 234.195, z = 0.000 }, area_id = 18, tag = 2 },
	{ config_id = 9021, pos = { x = -6652.568, y = 193.481, z = -2637.351 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, area_id = 18, tag = 2 },
	{ config_id = 9022, pos = { x = -6649.332, y = 193.599, z = -2635.624 }, rot = { x = 0.000, y = 200.194, z = 0.000 }, area_id = 18, tag = 2 },
	{ config_id = 9023, pos = { x = -6646.664, y = 193.577, z = -2636.961 }, rot = { x = 0.000, y = 205.179, z = 0.000 }, area_id = 18, tag = 2 },
	{ config_id = 9024, pos = { x = -6651.450, y = 193.650, z = -2633.997 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, area_id = 18, tag = 2 },
	{ config_id = 9025, pos = { x = -6654.459, y = 193.481, z = -2637.933 }, rot = { x = 0.000, y = 150.780, z = 0.000 }, area_id = 18, tag = 2 },
	{ config_id = 9026, pos = { x = -6640.813, y = 193.512, z = -2669.033 }, rot = { x = 0.000, y = 307.536, z = 0.000 }, area_id = 18, tag = 4 },
	{ config_id = 9027, pos = { x = -6637.874, y = 193.481, z = -2665.943 }, rot = { x = 0.000, y = 291.974, z = 0.000 }, area_id = 18, tag = 4 },
	{ config_id = 9028, pos = { x = -6638.092, y = 193.488, z = -2668.463 }, rot = { x = 0.000, y = 291.974, z = 0.000 }, area_id = 18, tag = 4 },
	{ config_id = 9029, pos = { x = -6638.193, y = 193.481, z = -2663.240 }, rot = { x = 0.000, y = 266.158, z = 0.000 }, area_id = 18, tag = 4 },
	{ config_id = 9030, pos = { x = -6635.295, y = 193.503, z = -2666.707 }, rot = { x = 0.000, y = 291.974, z = 0.000 }, area_id = 18, tag = 4 },
	{ config_id = 9031, pos = { x = -6636.467, y = 193.481, z = -2664.612 }, rot = { x = 0.000, y = 270.362, z = 0.000 }, area_id = 18, tag = 4 },
	{ config_id = 9032, pos = { x = -6671.789, y = 193.526, z = -2674.907 }, rot = { x = 0.000, y = 69.657, z = 0.000 }, area_id = 18, tag = 8 },
	{ config_id = 9033, pos = { x = -6670.272, y = 193.537, z = -2677.616 }, rot = { x = 0.000, y = 51.325, z = 0.000 }, area_id = 18, tag = 8 },
	{ config_id = 9034, pos = { x = -6666.747, y = 193.537, z = -2678.370 }, rot = { x = 0.000, y = 13.541, z = 0.000 }, area_id = 18, tag = 8 },
	{ config_id = 9035, pos = { x = -6662.194, y = 193.515, z = -2677.693 }, rot = { x = 0.000, y = 335.227, z = 0.000 }, area_id = 18, tag = 8 },
	{ config_id = 9036, pos = { x = -6671.656, y = 193.567, z = -2679.532 }, rot = { x = 0.000, y = 51.325, z = 0.000 }, area_id = 18, tag = 8 },
	{ config_id = 9037, pos = { x = -6666.386, y = 193.615, z = -2682.291 }, rot = { x = 0.000, y = 4.149, z = 0.000 }, area_id = 18, tag = 8 },
	{ config_id = 9038, pos = { x = -6647.804, y = 193.512, z = -2638.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 16 },
	{ config_id = 9039, pos = { x = -6654.958, y = 193.481, z = -2636.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 16 },
	{ config_id = 9040, pos = { x = -6632.846, y = 193.590, z = -2665.629 }, rot = { x = 0.000, y = 280.875, z = 0.000 }, area_id = 18, tag = 16 },
	{ config_id = 9041, pos = { x = -6641.748, y = 193.508, z = -2665.212 }, rot = { x = 0.000, y = 280.875, z = 0.000 }, area_id = 18, tag = 16 },
	{ config_id = 9042, pos = { x = -6636.097, y = 193.510, z = -2660.232 }, rot = { x = 0.000, y = 280.875, z = 0.000 }, area_id = 18, tag = 16 },
	{ config_id = 9043, pos = { x = -6628.872, y = 196.857, z = -2664.217 }, rot = { x = 0.000, y = 280.875, z = 0.000 }, area_id = 18, tag = 16 },
	{ config_id = 9044, pos = { x = -6636.052, y = 193.494, z = -2663.167 }, rot = { x = 0.000, y = 314.722, z = 0.000 }, area_id = 18, tag = 32 },
	{ config_id = 9045, pos = { x = -6641.685, y = 193.507, z = -2664.805 }, rot = { x = 0.000, y = 314.722, z = 0.000 }, area_id = 18, tag = 32 },
	{ config_id = 9046, pos = { x = -6659.491, y = 193.512, z = -2678.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 32 },
	{ config_id = 9047, pos = { x = -6670.256, y = 193.547, z = -2678.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 32 },
	{ config_id = 9048, pos = { x = -6665.683, y = 193.997, z = -2685.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 32 },
	{ config_id = 9049, pos = { x = -6674.583, y = 195.117, z = -2683.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 32 },
	{ config_id = 9050, pos = { x = -6665.584, y = 193.542, z = -2677.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 64 },
	{ config_id = 9051, pos = { x = -6672.789, y = 193.543, z = -2677.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18, tag = 64 },
	{ config_id = 9052, pos = { x = -6646.720, y = 193.501, z = -2644.572 }, rot = { x = 0.000, y = 200.251, z = 0.000 }, area_id = 18, tag = 64 },
	{ config_id = 9053, pos = { x = -6644.427, y = 193.531, z = -2639.397 }, rot = { x = 0.000, y = 200.251, z = 0.000 }, area_id = 18, tag = 64 },
	{ config_id = 9054, pos = { x = -6651.357, y = 193.543, z = -2635.581 }, rot = { x = 0.000, y = 200.251, z = 0.000 }, area_id = 18, tag = 64 },
	{ config_id = 9055, pos = { x = -6658.198, y = 194.356, z = -2632.945 }, rot = { x = 0.000, y = 200.251, z = 0.000 }, area_id = 18, tag = 64 },
	{ config_id = 9071, pos = { x = -6650.315, y = 193.526, z = -2673.250 }, rot = { x = 0.000, y = 326.180, z = 0.000 }, area_id = 18 }
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
		{ config_id = 1009013, name = "POOL_MONSTER_TIDE_DIE_9013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_9013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_9013", trigger_count = 0 },
		{ config_id = 1009014, name = "POOL_MONSTER_TIDE_DIE_9014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_9014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_9014", trigger_count = 0 },
		{ config_id = 1009015, name = "POOL_MONSTER_TIDE_DIE_9015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_9015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_9015", trigger_count = 0 },
		{ config_id = 1009016, name = "POOL_MONSTER_TIDE_DIE_9016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_9016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_9016", trigger_count = 0 },
		{ config_id = 1009017, name = "POOL_MONSTER_TIDE_DIE_9017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_9017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_9017", trigger_count = 0 },
		{ config_id = 1009018, name = "POOL_MONSTER_TIDE_DIE_9018", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_9018", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_9018", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 9002, 9003, 9004, 9005, 9006, 9007, 9056, 9061, 9062, 9063, 9064, 9065, 9067 }
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
		gadgets = { 9002, 9003, 9004 },
		regions = { 9009, 9066, 9069 },
		triggers = { "SELECT_OPTION_9010", "TIME_AXIS_PASS_9011", "VARIABLE_CHANGE_9012", "VARIABLE_CHANGE_9019", "VARIABLE_CHANGE_9057", "GADGET_STATE_CHANGE_9058", "GADGET_STATE_CHANGE_9059", "GADGET_STATE_CHANGE_9060", "ENTER_REGION_9066", "GADGET_STATE_CHANGE_9068", "ENTER_REGION_9069", "VARIABLE_CHANGE_9070" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 9061, 9062, 9063, 9064, 9065, 9067 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_9010(context, evt)
	-- 判断是gadgetid 9001 option_id 175
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9010(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_9011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_9012(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	--如果refesh为0
	if ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 0 then
		return 0
	end
	
	--三个电桩进度全满跳出
	if ScriptLib.GetGalleryProgressScore(context, "digProgress0", defs.gallery_id)>=100 and ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 and ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 then
		return 0
	end
	--三个电桩全部没有激活跳出
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[1]) ~= GadgetState.GearStop and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
		return 0
	end
	
	
	--根据激活矿机数量计算刷怪数量
	
	math.randomseed(ScriptLib.GetServerTime(context)) 
	local tempValue = math.random(3,5) 
	
	local monsterArray = defs.monsterWave[1]
	
	if ScriptLib.GetGroupVariableValue(context, "Active_Count") == 2 then
		monsterArray = defs.monsterWave[2]
	elseif	ScriptLib.GetGroupVariableValue(context, "Active_Count")==3 then
		monsterArray = defs.monsterWave[tempValue]
	else
		monsterArray = defs.monsterWave[1]
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
			ScriptLib.AutoPoolMonsterTide(context, 1, defs.group_id, {monsterArray}, 0, {}, {}, {total_count=4, min_count=4, max_count=4, tag=2, fill_time=0, fill_count=0})
			return 0
		end
	-- refreshMonster=2，刷第2波.B点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 2  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress1", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[2]) ~= GadgetState.GearStop then
			ScriptLib.ChangeGroupVariableValueByGroup(context, "refreshMonster", 1,defs.group_id )
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 2, defs.group_id, {monsterArray}, 0, {}, {},  {total_count=4, min_count=4, max_count=4, tag=4, fill_time=0, fill_count=0})
			return 0
		end
	-- refreshMonster=3，刷第3波.C点刷新
	elseif ScriptLib.GetGroupVariableValue(context, "refreshMonster") == 3  then
		if ScriptLib.GetGalleryProgressScore(context, "digProgress2", defs.gallery_id)>=100 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.prospect_id[3]) ~= GadgetState.GearStop then
			ScriptLib.SetGroupVariableValue(context, "refreshMonster", 1)
			return 0
		else
			ScriptLib.ShowReminder(context, 600082)
			ScriptLib.AutoPoolMonsterTide(context, 3, defs.group_id, {monsterArray}, 0, {}, {}, {total_count=4, min_count=4, max_count=4, tag=8, fill_time=0, fill_count=0})
			return 0
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IsFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "IsFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9019(context, evt)
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9057(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Boss_Enhance"为1
	if ScriptLib.GetGroupVariableValue(context, "Boss_Enhance") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9057(context, evt)
	-- 针对当前group内变量名为 "refreshMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "refreshMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"looptime"，时间节点为{40,80}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "looptime", {40,80}, true)
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9058(context, evt)
	if 9002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9058(context, evt)
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.Boss}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	-- 通知groupid为133225009中,configid为：9056的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 9056, 133225009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9059(context, evt)
	if 9003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9059(context, evt)
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.Boss}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	-- 通知groupid为133225009中,configid为：9056的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 9056, 133225009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9060(context, evt)
	if 9004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9060(context, evt)
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.Boss}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	-- 通知groupid为133225009中,configid为：9056的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 9056, 133225009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9068(context, evt)
	if (defs.prospect_id[1] ~= evt.param2 and defs.prospect_id[2] ~= evt.param2 and defs.prospect_id[3] ~= evt.param2) or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9068(context, evt)
	-- 延迟1秒后,向groupId为：133225009的对象,请求一次调用,并将string参数："starttime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133225009, "starttime", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9069(context, evt)
	if evt.param1 ~= 9069 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9069(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,147,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9070(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Boss_Enhance"为0
	if ScriptLib.GetGroupVariableValue(context, "Boss_Enhance") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9070(context, evt)
	-- 将本组内变量名为 "refreshMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "refreshMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"looptime"的时间轴
	ScriptLib.EndTimeAxis(context, "looptime")
	
	
	return 0
end

require "V2_2/Dig"