-- 基础信息
local base_info = {
	group_id = 133220579
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 579001, monster_id = 25100201, pos = { x = -2242.856, y = 200.221, z = -4840.918 }, rot = { x = 0.000, y = 157.586, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1001, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 579002, gadget_id = 70710078, pos = { x = -2238.295, y = 200.178, z = -4840.919 }, rot = { x = 0.434, y = 305.752, z = 357.826 }, level = 27, area_id = 11 },
	{ config_id = 579003, gadget_id = 70710078, pos = { x = -2240.941, y = 200.337, z = -4845.216 }, rot = { x = 0.000, y = 91.814, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 579004, gadget_id = 70710078, pos = { x = -2244.932, y = 200.554, z = -4843.970 }, rot = { x = 11.293, y = 322.606, z = 169.482 }, level = 27, area_id = 11 },
	{ config_id = 579005, gadget_id = 70710078, pos = { x = -2245.759, y = 200.293, z = -4848.024 }, rot = { x = 7.999, y = 71.766, z = 352.021 }, level = 27, area_id = 11 },
	{ config_id = 579006, gadget_id = 70710078, pos = { x = -2244.551, y = 199.981, z = -4834.245 }, rot = { x = 0.000, y = 256.297, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 579007, gadget_id = 70300086, pos = { x = -2236.101, y = 198.381, z = -4841.989 }, rot = { x = 0.013, y = 341.762, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 579008, gadget_id = 70300086, pos = { x = -2249.089, y = 199.683, z = -4846.950 }, rot = { x = 348.528, y = 38.364, z = 14.021 }, level = 27, area_id = 11 },
	{ config_id = 579009, gadget_id = 70300086, pos = { x = -2249.555, y = 200.003, z = -4841.308 }, rot = { x = 22.511, y = 132.993, z = 86.363 }, level = 27, area_id = 11 },
	{ config_id = 579010, gadget_id = 70310006, pos = { x = -2247.811, y = 200.302, z = -4846.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 579011, gadget_id = 70211011, pos = { x = -2249.729, y = 200.082, z = -4845.130 }, rot = { x = 355.698, y = 57.956, z = 8.013 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 579012, gadget_id = 70710108, pos = { x = -2252.991, y = 199.682, z = -4839.158 }, rot = { x = 0.000, y = 49.314, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1579013, name = "GADGET_STATE_CHANGE_579013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_579013", action = "action_EVENT_GADGET_STATE_CHANGE_579013" }
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
	end_suite = 2,
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
		monsters = { 579001 },
		gadgets = { 579002, 579003, 579004, 579005, 579006, 579007, 579008, 579009, 579010, 579011, 579012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_579013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 579007, 579008, 579009, 579010, 579012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_579013(context, evt)
	if 579011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_579013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220579, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end