-- 基础信息
local base_info = {
	group_id = 133103460
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 460001, monster_id = 20010801, pos = { x = 679.836, y = 410.924, z = 1858.632 }, rot = { x = 0.000, y = 191.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460002, monster_id = 20010801, pos = { x = 683.108, y = 410.900, z = 1859.721 }, rot = { x = 0.000, y = 213.090, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460003, monster_id = 20011401, pos = { x = 733.253, y = 386.441, z = 1899.140 }, rot = { x = 0.000, y = 43.310, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460004, monster_id = 20011401, pos = { x = 733.284, y = 385.867, z = 1901.205 }, rot = { x = 0.000, y = 146.197, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460005, monster_id = 20011201, pos = { x = 704.341, y = 319.453, z = 1764.273 }, rot = { x = 358.286, y = 354.010, z = 359.588 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460006, monster_id = 20011201, pos = { x = 698.523, y = 318.818, z = 1767.370 }, rot = { x = 0.071, y = 72.787, z = 358.238 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460030, monster_id = 20010801, pos = { x = 682.396, y = 410.937, z = 1855.921 }, rot = { x = 0.000, y = 298.217, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460032, monster_id = 20010901, pos = { x = 682.078, y = 410.937, z = 1858.152 }, rot = { x = 0.000, y = 298.217, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460033, monster_id = 20011401, pos = { x = 734.698, y = 385.837, z = 1900.120 }, rot = { x = 0.000, y = 279.853, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460034, monster_id = 20011201, pos = { x = 704.635, y = 319.755, z = 1769.943 }, rot = { x = 0.415, y = 236.871, z = 1.714 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460040, monster_id = 20010301, pos = { x = 760.986, y = 312.698, z = 1768.189 }, rot = { x = 0.000, y = 354.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460041, monster_id = 20010301, pos = { x = 756.629, y = 313.041, z = 1766.619 }, rot = { x = 0.000, y = 354.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460042, monster_id = 20010301, pos = { x = 756.967, y = 313.666, z = 1771.678 }, rot = { x = 0.000, y = 354.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460043, monster_id = 20010501, pos = { x = 757.046, y = 313.592, z = 1771.228 }, rot = { x = 0.000, y = 354.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460049, monster_id = 20011401, pos = { x = 784.089, y = 332.889, z = 1642.350 }, rot = { x = 0.000, y = 354.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460056, monster_id = 20010501, pos = { x = 760.522, y = 312.836, z = 1768.668 }, rot = { x = 0.000, y = 354.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 460057, monster_id = 20010501, pos = { x = 756.616, y = 313.099, z = 1766.973 }, rot = { x = 0.000, y = 354.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 460007, gadget_id = 70360005, pos = { x = 712.744, y = 428.296, z = 1784.821 }, rot = { x = 0.948, y = 0.052, z = 359.937 }, level = 24, area_id = 6 },
	{ config_id = 460008, gadget_id = 70360025, pos = { x = 785.546, y = 319.431, z = 1575.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460009, gadget_id = 70350085, pos = { x = 682.497, y = 410.916, z = 1858.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460010, gadget_id = 70300114, pos = { x = 682.500, y = 410.900, z = 1858.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460011, gadget_id = 70350085, pos = { x = 733.647, y = 385.967, z = 1900.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460012, gadget_id = 70300114, pos = { x = 733.615, y = 383.683, z = 1900.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460013, gadget_id = 70350085, pos = { x = 702.097, y = 319.549, z = 1766.551 }, rot = { x = 358.338, y = 0.009, z = 359.411 }, level = 1, area_id = 6 },
	{ config_id = 460014, gadget_id = 70300114, pos = { x = 702.078, y = 318.689, z = 1766.563 }, rot = { x = 358.338, y = 0.009, z = 359.411 }, level = 1, area_id = 6 },
	{ config_id = 460015, gadget_id = 70350085, pos = { x = 785.500, y = 319.400, z = 1575.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460017, gadget_id = 70710126, pos = { x = 682.500, y = 410.900, z = 1858.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460018, gadget_id = 70710126, pos = { x = 733.615, y = 385.973, z = 1900.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460019, gadget_id = 70710126, pos = { x = 702.087, y = 319.547, z = 1766.538 }, rot = { x = 358.338, y = 0.009, z = 359.411 }, level = 1, area_id = 6 },
	{ config_id = 460035, gadget_id = 70350085, pos = { x = 758.150, y = 312.858, z = 1767.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460036, gadget_id = 70300114, pos = { x = 758.200, y = 311.279, z = 1767.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460037, gadget_id = 70710126, pos = { x = 758.200, y = 312.900, z = 1767.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460045, gadget_id = 70710126, pos = { x = 782.738, y = 332.652, z = 1640.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460048, gadget_id = 70350085, pos = { x = 782.700, y = 332.700, z = 1640.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460052, gadget_id = 70690010, pos = { x = 773.878, y = 283.167, z = 1704.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460053, gadget_id = 70690010, pos = { x = 779.113, y = 283.167, z = 1673.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460054, gadget_id = 70690001, pos = { x = 784.334, y = 325.757, z = 1619.349 }, rot = { x = 13.751, y = 356.725, z = 1.261 }, level = 1, area_id = 6 },
	{ config_id = 460055, gadget_id = 70690001, pos = { x = 696.107, y = 419.248, z = 1825.995 }, rot = { x = 0.000, y = 338.024, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 460058, gadget_id = 70350085, pos = { x = 712.745, y = 429.155, z = 1784.839 }, rot = { x = 0.948, y = 0.052, z = 359.937 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 460023, shape = RegionShape.SPHERE, radius = 2, pos = { x = 785.500, y = 319.400, z = 1575.500 }, area_id = 6 },
	{ config_id = 460024, shape = RegionShape.SPHERE, radius = 7, pos = { x = 682.500, y = 410.900, z = 1858.800 }, area_id = 6 },
	{ config_id = 460026, shape = RegionShape.SPHERE, radius = 7, pos = { x = 733.647, y = 385.967, z = 1900.439 }, area_id = 6 },
	{ config_id = 460028, shape = RegionShape.SPHERE, radius = 7, pos = { x = 702.087, y = 319.547, z = 1766.538 }, area_id = 6 },
	{ config_id = 460038, shape = RegionShape.SPHERE, radius = 7, pos = { x = 758.200, y = 312.900, z = 1767.800 }, area_id = 6 },
	{ config_id = 460046, shape = RegionShape.SPHERE, radius = 7, pos = { x = 782.700, y = 332.700, z = 1640.700 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1460020, name = "GADGET_STATE_CHANGE_460020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_460020", action = "action_EVENT_GADGET_STATE_CHANGE_460020", trigger_count = 0 },
	{ config_id = 1460021, name = "CHALLENGE_SUCCESS_460021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_460021", trigger_count = 0 },
	{ config_id = 1460022, name = "CHALLENGE_FAIL_460022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_460022", trigger_count = 0 },
	{ config_id = 1460023, name = "ENTER_REGION_460023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460023", action = "", trigger_count = 0, tag = "888" },
	{ config_id = 1460024, name = "ENTER_REGION_460024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460024", action = "action_EVENT_ENTER_REGION_460024" },
	{ config_id = 1460025, name = "ANY_MONSTER_DIE_460025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460025", action = "action_EVENT_ANY_MONSTER_DIE_460025" },
	{ config_id = 1460026, name = "ENTER_REGION_460026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460026", action = "action_EVENT_ENTER_REGION_460026" },
	{ config_id = 1460027, name = "ANY_MONSTER_DIE_460027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460027", action = "action_EVENT_ANY_MONSTER_DIE_460027" },
	{ config_id = 1460028, name = "ENTER_REGION_460028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460028", action = "action_EVENT_ENTER_REGION_460028" },
	{ config_id = 1460029, name = "ANY_MONSTER_DIE_460029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460029", action = "action_EVENT_ANY_MONSTER_DIE_460029" },
	{ config_id = 1460031, name = "ANY_MONSTER_DIE_460031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460031", action = "action_EVENT_ANY_MONSTER_DIE_460031" },
	{ config_id = 1460038, name = "ENTER_REGION_460038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460038", action = "action_EVENT_ENTER_REGION_460038" },
	{ config_id = 1460039, name = "ANY_MONSTER_DIE_460039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460039", action = "action_EVENT_ANY_MONSTER_DIE_460039" },
	{ config_id = 1460044, name = "ANY_MONSTER_DIE_460044", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460044", action = "action_EVENT_ANY_MONSTER_DIE_460044" },
	{ config_id = 1460046, name = "ENTER_REGION_460046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460046", action = "action_EVENT_ENTER_REGION_460046" },
	{ config_id = 1460047, name = "ANY_MONSTER_DIE_460047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460047", action = "action_EVENT_ANY_MONSTER_DIE_460047" }
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
		gadgets = { 460007, 460058 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_460020", "CHALLENGE_SUCCESS_460021", "CHALLENGE_FAIL_460022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 460008, 460015, 460054 },
		regions = { 460023 },
		triggers = { "ENTER_REGION_460023" },
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
		monsters = { 460001, 460002, 460030 },
		gadgets = { 460009, 460010, 460017, 460055 },
		regions = { 460024 },
		triggers = { "ENTER_REGION_460024", "ANY_MONSTER_DIE_460031" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 460003, 460004, 460033 },
		gadgets = { 460011, 460012, 460018 },
		regions = { 460026 },
		triggers = { "ENTER_REGION_460026", "ANY_MONSTER_DIE_460027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { 460005, 460006, 460034 },
		gadgets = { 460013, 460014, 460019 },
		regions = { 460028 },
		triggers = { "ENTER_REGION_460028", "ANY_MONSTER_DIE_460029" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点1_2,
		monsters = { 460032 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_460025" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 节点4,
		monsters = { 460040, 460041, 460042 },
		gadgets = { 460035, 460036, 460037 },
		regions = { 460038 },
		triggers = { "ENTER_REGION_460038", "ANY_MONSTER_DIE_460044" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 节点4_2,
		monsters = { 460043, 460056, 460057 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_460039" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 节点5,
		monsters = { 460049 },
		gadgets = { 460045, 460048, 460052, 460053 },
		regions = { 460046 },
		triggers = { "ENTER_REGION_460046", "ANY_MONSTER_DIE_460047" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_460020(context, evt)
	if 460007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_460020(context, evt)
	-- 将configid为 460058 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460058, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为666（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 189, 75, 4, 888, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 6)
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_460021(context, evt)
	-- 将configid为 460007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460058 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 10)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103460, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_460022(context, evt)
	-- 将configid为 460058 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460058, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 460007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 10)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 2)
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460023(context, evt)
	if evt.param1 ~= 460023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460024(context, evt)
	if evt.param1 ~= 460024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_460024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 460010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460025(context, evt)
	-- 将configid为 460010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 4)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460026(context, evt)
	if evt.param1 ~= 460026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_460026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 460012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460027(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 5)
	
	-- 将configid为 460012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460028(context, evt)
	if evt.param1 ~= 460028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_460028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 460014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460029(context, evt)
	-- 将configid为 460014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 8)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460031(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460031(context, evt)
	-- 将configid为 460010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460038(context, evt)
	if evt.param1 ~= 460038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_460038(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460037 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 460036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460039(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460039(context, evt)
	-- 将configid为 460036 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460036, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 10)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460044(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460044(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460046(context, evt)
	if evt.param1 ~= 460046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_460046(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460048 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460045 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460047(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103460, 2)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103460, 10)
	
	return 0
end