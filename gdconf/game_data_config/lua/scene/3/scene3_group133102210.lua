-- 基础信息
local base_info = {
	group_id = 133102210
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
	{ config_id = 210001, gadget_id = 70710591, pos = { x = 1610.622, y = 243.344, z = 804.804 }, rot = { x = 5.182, y = 17.225, z = 0.424 }, level = 1, area_id = 5 },
	{ config_id = 210002, gadget_id = 70710592, pos = { x = 1609.885, y = 243.490, z = 804.916 }, rot = { x = 5.011, y = 16.388, z = 358.241 }, level = 1, area_id = 5 },
	{ config_id = 210003, gadget_id = 70710593, pos = { x = 1611.598, y = 244.060, z = 797.827 }, rot = { x = 9.271, y = 90.113, z = 5.005 }, level = 1, area_id = 5 },
	{ config_id = 210004, gadget_id = 70710644, pos = { x = 1611.383, y = 242.957, z = 797.734 }, rot = { x = 5.812, y = 8.231, z = 352.481 }, level = 1, area_id = 5 },
	{ config_id = 210005, gadget_id = 70710644, pos = { x = 1610.551, y = 242.843, z = 799.820 }, rot = { x = 1.537, y = 339.303, z = 351.531 }, level = 1, area_id = 5 },
	{ config_id = 210006, gadget_id = 70710629, pos = { x = 1610.558, y = 242.675, z = 804.716 }, rot = { x = 5.389, y = 13.108, z = 350.586 }, level = 1, area_id = 5 },
	{ config_id = 210007, gadget_id = 70710591, pos = { x = 1613.178, y = 243.683, z = 799.475 }, rot = { x = 1.736, y = 30.509, z = 355.736 }, level = 1, area_id = 5 },
	{ config_id = 210008, gadget_id = 70710644, pos = { x = 1612.605, y = 242.630, z = 799.360 }, rot = { x = 2.585, y = 355.731, z = 352.283 }, level = 1, area_id = 5 },
	{ config_id = 210009, gadget_id = 70710592, pos = { x = 1612.470, y = 243.753, z = 799.448 }, rot = { x = 2.787, y = 19.138, z = 352.107 }, level = 1, area_id = 5 },
	{ config_id = 210010, gadget_id = 70710593, pos = { x = 1610.793, y = 243.929, z = 799.915 }, rot = { x = 7.526, y = 67.394, z = 1.759 }, level = 1, area_id = 5 },
	{ config_id = 210013, gadget_id = 70950138, pos = { x = 1606.504, y = 243.359, z = 799.997 }, rot = { x = 3.730, y = 357.362, z = 359.845 }, level = 1, area_id = 5 },
	{ config_id = 210014, gadget_id = 70950138, pos = { x = 1608.494, y = 243.382, z = 795.400 }, rot = { x = 3.686, y = 133.972, z = 11.208 }, level = 1, area_id = 5 },
	{ config_id = 210015, gadget_id = 70950138, pos = { x = 1614.145, y = 242.700, z = 794.632 }, rot = { x = 353.594, y = 239.532, z = 0.704 }, level = 1, area_id = 5 },
	{ config_id = 210016, gadget_id = 70950138, pos = { x = 1615.474, y = 241.366, z = 808.991 }, rot = { x = 356.461, y = 282.872, z = 355.240 }, level = 1, area_id = 5 },
	{ config_id = 210017, gadget_id = 70310001, pos = { x = 1617.016, y = 242.577, z = 796.979 }, rot = { x = 5.213, y = 3.325, z = 358.929 }, level = 1, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 210018, gadget_id = 70310001, pos = { x = 1618.243, y = 241.499, z = 806.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1210012, name = "QUEST_START_210012", event = EventType.EVENT_QUEST_START, source = "4003707", condition = "", action = "action_EVENT_QUEST_START_210012" }
}

-- 变量
variables = {
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
		gadgets = { 210001, 210002, 210003, 210004, 210005, 210006, 210007, 210008, 210009, 210010, 210013, 210014, 210015, 210016, 210017, 210018 },
		regions = { },
		triggers = { "QUEST_START_210012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 210004, 210005, 210006, 210008, 210013, 210014, 210015, 210016, 210017, 210018 },
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

-- 触发操作
function action_EVENT_QUEST_START_210012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102210, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end