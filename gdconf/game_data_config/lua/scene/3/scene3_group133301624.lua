-- 基础信息
local base_info = {
	group_id = 133301624
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 624005, monster_id = 21010201, pos = { x = -899.489, y = 332.855, z = 3367.849 }, rot = { x = 0.000, y = 258.104, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 624006, monster_id = 21010201, pos = { x = -873.083, y = 318.248, z = 3364.816 }, rot = { x = 0.000, y = 249.174, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	{ config_id = 624007, monster_id = 21010501, pos = { x = -898.199, y = 332.952, z = 3364.865 }, rot = { x = 0.000, y = 128.709, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 23 },
	{ config_id = 624008, monster_id = 21010501, pos = { x = -871.455, y = 316.588, z = 3368.048 }, rot = { x = 0.000, y = 155.549, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 624001, gadget_id = 70330219, pos = { x = -903.196, y = 332.360, z = 3367.178 }, rot = { x = 338.320, y = 39.842, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 624002, gadget_id = 70310198, pos = { x = -874.350, y = 319.429, z = 3363.979 }, rot = { x = 354.390, y = 157.441, z = 29.373 }, level = 30, area_id = 23 },
	{ config_id = 624003, gadget_id = 70211111, pos = { x = -903.169, y = 333.336, z = 3367.150 }, rot = { x = 0.000, y = 41.668, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1624004, name = "ANY_GADGET_DIE_624004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_624004", action = "action_EVENT_ANY_GADGET_DIE_624004" }
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
		monsters = { 624005, 624006, 624007, 624008 },
		gadgets = { 624001, 624002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_624004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 624002, 624003 },
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
function condition_EVENT_ANY_GADGET_DIE_624004(context, evt)
	if 624001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_624004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301624, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end