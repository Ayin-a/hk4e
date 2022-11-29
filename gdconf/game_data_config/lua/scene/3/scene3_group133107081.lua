-- 基础信息
local base_info = {
	group_id = 133107081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 20010301, pos = { x = -357.119, y = 242.077, z = 726.992 }, rot = { x = 0.000, y = 150.299, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81002, monster_id = 20010301, pos = { x = -354.492, y = 242.236, z = 726.492 }, rot = { x = 0.000, y = 210.176, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81003, monster_id = 20011201, pos = { x = -383.556, y = 245.795, z = 775.629 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81004, monster_id = 20011201, pos = { x = -384.486, y = 246.552, z = 773.727 }, rot = { x = 0.000, y = 99.975, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81005, monster_id = 20011401, pos = { x = -378.374, y = 218.717, z = 835.713 }, rot = { x = 0.000, y = 236.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81006, monster_id = 20011401, pos = { x = -380.751, y = 218.690, z = 836.138 }, rot = { x = 0.000, y = 167.847, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81030, monster_id = 20010301, pos = { x = -356.052, y = 242.290, z = 724.685 }, rot = { x = 0.000, y = 171.089, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81031, monster_id = 20011201, pos = { x = -382.807, y = 246.074, z = 773.527 }, rot = { x = 0.000, y = 266.660, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81032, monster_id = 20011401, pos = { x = -379.971, y = 219.244, z = 833.576 }, rot = { x = 0.000, y = 329.815, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81034, monster_id = 20010501, pos = { x = -380.063, y = 219.219, z = 833.695 }, rot = { x = 0.000, y = 185.277, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81039, monster_id = 20011001, pos = { x = -271.416, y = 180.680, z = 878.938 }, rot = { x = 0.000, y = 287.514, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81041, monster_id = 20011001, pos = { x = -273.165, y = 180.680, z = 883.011 }, rot = { x = 0.000, y = 221.058, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81042, monster_id = 20011001, pos = { x = -277.441, y = 181.027, z = 878.775 }, rot = { x = 0.000, y = 68.845, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81048, monster_id = 20010501, pos = { x = -230.501, y = 181.500, z = 894.544 }, rot = { x = 0.000, y = 163.603, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81049, monster_id = 20010501, pos = { x = -226.038, y = 181.197, z = 888.345 }, rot = { x = 0.000, y = 292.861, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81050, monster_id = 20010501, pos = { x = -230.901, y = 181.200, z = 889.651 }, rot = { x = 0.000, y = 11.855, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81051, monster_id = 20010601, pos = { x = -228.218, y = 181.829, z = 891.214 }, rot = { x = 0.000, y = 238.735, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81060, monster_id = 20010501, pos = { x = -380.728, y = 218.695, z = 836.071 }, rot = { x = 0.000, y = 185.277, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 },
	{ config_id = 81061, monster_id = 20010501, pos = { x = -378.502, y = 218.694, z = 835.830 }, rot = { x = 0.000, y = 185.277, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81007, gadget_id = 70360005, pos = { x = -304.052, y = 355.236, z = 647.003 }, rot = { x = 8.535, y = 359.474, z = 8.303 }, level = 1, area_id = 7 },
	{ config_id = 81008, gadget_id = 70360025, pos = { x = -137.186, y = 179.712, z = 974.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81009, gadget_id = 70350085, pos = { x = -356.572, y = 242.196, z = 726.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81010, gadget_id = 70300114, pos = { x = -356.600, y = 242.190, z = 726.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81011, gadget_id = 70350085, pos = { x = -383.388, y = 245.961, z = 774.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81012, gadget_id = 70300114, pos = { x = -383.420, y = 242.787, z = 774.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81013, gadget_id = 70350085, pos = { x = -380.343, y = 218.744, z = 835.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81014, gadget_id = 70300114, pos = { x = -380.300, y = 218.735, z = 835.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81015, gadget_id = 70350085, pos = { x = -137.200, y = 179.716, z = 974.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81016, gadget_id = 70350085, pos = { x = -304.052, y = 356.136, z = 647.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 81017, gadget_id = 70710126, pos = { x = -356.600, y = 244.040, z = 726.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81018, gadget_id = 70710126, pos = { x = -383.420, y = 245.969, z = 774.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81019, gadget_id = 70710126, pos = { x = -380.300, y = 218.735, z = 835.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81035, gadget_id = 70350085, pos = { x = -274.255, y = 180.680, z = 880.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81036, gadget_id = 70300114, pos = { x = -274.255, y = 179.861, z = 880.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81037, gadget_id = 70710126, pos = { x = -274.255, y = 180.680, z = 880.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81043, gadget_id = 70350085, pos = { x = -228.091, y = 181.812, z = 891.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81044, gadget_id = 70300114, pos = { x = -228.100, y = 180.631, z = 891.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81045, gadget_id = 70710126, pos = { x = -228.100, y = 181.815, z = 891.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81053, gadget_id = 70690006, pos = { x = -228.743, y = 181.898, z = 891.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81054, gadget_id = 70690001, pos = { x = -182.766, y = 191.212, z = 933.042 }, rot = { x = 6.036, y = 46.720, z = 0.249 }, level = 1, area_id = 8 },
	{ config_id = 81055, gadget_id = 70690001, pos = { x = -163.311, y = 188.386, z = 951.363 }, rot = { x = 6.036, y = 46.720, z = 0.249 }, level = 1, area_id = 8 },
	{ config_id = 81057, gadget_id = 70690001, pos = { x = -317.441, y = 342.316, z = 669.441 }, rot = { x = 17.831, y = 329.834, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 81058, gadget_id = 70690001, pos = { x = -331.324, y = 333.430, z = 693.327 }, rot = { x = 17.831, y = 329.834, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 81059, gadget_id = 70690001, pos = { x = -351.961, y = 312.064, z = 728.832 }, rot = { x = 90.000, y = 329.834, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81062, gadget_id = 70690001, pos = { x = -348.194, y = 211.727, z = 845.515 }, rot = { x = 19.751, y = 57.771, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81063, gadget_id = 70690001, pos = { x = -324.401, y = 204.544, z = 861.665 }, rot = { x = 14.183, y = 66.724, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81064, gadget_id = 70690001, pos = { x = -380.845, y = 237.541, z = 807.528 }, rot = { x = 24.359, y = 7.547, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 81065, gadget_id = 70690001, pos = { x = -302.343, y = 194.435, z = 871.154 }, rot = { x = 14.183, y = 66.724, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 81023, shape = RegionShape.SPHERE, radius = 2, pos = { x = -137.200, y = 179.716, z = 974.300 }, area_id = 8 },
	{ config_id = 81024, shape = RegionShape.SPHERE, radius = 7, pos = { x = -356.600, y = 244.040, z = 726.100 }, area_id = 8 },
	{ config_id = 81026, shape = RegionShape.SPHERE, radius = 7, pos = { x = -383.420, y = 245.969, z = 774.793 }, area_id = 8 },
	{ config_id = 81028, shape = RegionShape.SPHERE, radius = 7, pos = { x = -380.300, y = 218.735, z = 835.800 }, area_id = 8 },
	{ config_id = 81038, shape = RegionShape.SPHERE, radius = 7, pos = { x = -274.255, y = 180.680, z = 880.628 }, area_id = 8 },
	{ config_id = 81046, shape = RegionShape.SPHERE, radius = 7, pos = { x = -228.100, y = 181.815, z = 891.300 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1081020, name = "GADGET_STATE_CHANGE_81020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81020", action = "action_EVENT_GADGET_STATE_CHANGE_81020", trigger_count = 0 },
	{ config_id = 1081021, name = "CHALLENGE_SUCCESS_81021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_81021", trigger_count = 0 },
	{ config_id = 1081022, name = "CHALLENGE_FAIL_81022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_81022", trigger_count = 0 },
	{ config_id = 1081023, name = "ENTER_REGION_81023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81023", action = "", trigger_count = 0, tag = "888" },
	{ config_id = 1081024, name = "ENTER_REGION_81024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81024", action = "action_EVENT_ENTER_REGION_81024" },
	{ config_id = 1081025, name = "ANY_MONSTER_DIE_81025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81025", action = "action_EVENT_ANY_MONSTER_DIE_81025" },
	{ config_id = 1081026, name = "ENTER_REGION_81026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81026", action = "action_EVENT_ENTER_REGION_81026" },
	{ config_id = 1081027, name = "ANY_MONSTER_DIE_81027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81027", action = "action_EVENT_ANY_MONSTER_DIE_81027" },
	{ config_id = 1081028, name = "ENTER_REGION_81028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81028", action = "action_EVENT_ENTER_REGION_81028" },
	{ config_id = 1081029, name = "ANY_MONSTER_DIE_81029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81029", action = "action_EVENT_ANY_MONSTER_DIE_81029", trigger_count = 0 },
	{ config_id = 1081033, name = "ANY_MONSTER_DIE_81033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81033", action = "action_EVENT_ANY_MONSTER_DIE_81033", trigger_count = 0 },
	{ config_id = 1081038, name = "ENTER_REGION_81038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81038", action = "action_EVENT_ENTER_REGION_81038" },
	{ config_id = 1081040, name = "ANY_MONSTER_DIE_81040", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81040", action = "action_EVENT_ANY_MONSTER_DIE_81040", trigger_count = 0 },
	{ config_id = 1081046, name = "ENTER_REGION_81046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81046", action = "action_EVENT_ENTER_REGION_81046" },
	{ config_id = 1081047, name = "ANY_MONSTER_DIE_81047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81047", action = "action_EVENT_ANY_MONSTER_DIE_81047", trigger_count = 0 },
	{ config_id = 1081052, name = "ANY_MONSTER_DIE_81052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81052", action = "action_EVENT_ANY_MONSTER_DIE_81052", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = 起点,
		monsters = { },
		gadgets = { 81007, 81016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_81020", "CHALLENGE_SUCCESS_81021", "CHALLENGE_FAIL_81022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 81008, 81015, 81053, 81054, 81055 },
		regions = { 81023 },
		triggers = { "ENTER_REGION_81023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点1,
		monsters = { 81001, 81002, 81030 },
		gadgets = { 81009, 81010, 81017, 81057, 81058, 81059 },
		regions = { 81024 },
		triggers = { "ENTER_REGION_81024", "ANY_MONSTER_DIE_81025" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 81003, 81004, 81031 },
		gadgets = { 81011, 81012, 81018 },
		regions = { 81026 },
		triggers = { "ENTER_REGION_81026", "ANY_MONSTER_DIE_81027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { 81005, 81006, 81032 },
		gadgets = { 81013, 81014, 81019, 81064 },
		regions = { 81028 },
		triggers = { "ENTER_REGION_81028", "ANY_MONSTER_DIE_81033" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点3_2,
		monsters = { 81034, 81060, 81061 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_81029" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 节点4,
		monsters = { 81039, 81041, 81042 },
		gadgets = { 81035, 81036, 81037, 81062, 81063, 81065 },
		regions = { 81038 },
		triggers = { "ENTER_REGION_81038", "ANY_MONSTER_DIE_81040" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 节点5,
		monsters = { 81048, 81049, 81050 },
		gadgets = { 81043, 81044, 81045 },
		regions = { 81046 },
		triggers = { "ENTER_REGION_81046", "ANY_MONSTER_DIE_81052" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 节点5_2,
		monsters = { 81051 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_81047" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81020(context, evt)
	if 81007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81020(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为207的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 207, 90, 4, 888, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 4)
	
	-- 将configid为 81016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_81021(context, evt)
	-- 将configid为 81007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 10)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133107081, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_81022(context, evt)
	-- 将configid为 81007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 81016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 10)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 2)
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81023(context, evt)
	if evt.param1 ~= 81023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81024(context, evt)
	if evt.param1 ~= 81024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 81010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81025(context, evt)
	-- 将configid为 81010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81026(context, evt)
	if evt.param1 ~= 81026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 81012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81027(context, evt)
	-- 将configid为 81012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81028(context, evt)
	if evt.param1 ~= 81028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 81014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81029(context, evt)
	-- 将configid为 81014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 8)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81033(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81033(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81038(context, evt)
	if evt.param1 ~= 81038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81038(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81037 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 81036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81040(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81040(context, evt)
	-- 将configid为 81036 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81036, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 9)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81046(context, evt)
	if evt.param1 ~= 81046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81046(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81043 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 81045 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 81044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81047(context, evt)
	-- 将configid为 81044 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81044, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 2)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107081, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81052(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81052(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107081, 10)
	
	return 0
end