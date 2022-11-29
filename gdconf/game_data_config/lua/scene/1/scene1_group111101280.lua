-- 基础信息
local base_info = {
	group_id = 111101280
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 280002, monster_id = 21010401, pos = { x = 2250.479, y = 264.136, z = -1670.772 }, rot = { x = 0.000, y = 197.343, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true },
	{ config_id = 280003, monster_id = 21010401, pos = { x = 2257.482, y = 264.021, z = -1680.182 }, rot = { x = 0.000, y = 279.175, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true },
	{ config_id = 280004, monster_id = 21010101, pos = { x = 2248.388, y = 263.856, z = -1673.506 }, rot = { x = 0.000, y = 206.135, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true },
	{ config_id = 280005, monster_id = 21010101, pos = { x = 2254.681, y = 263.849, z = -1681.981 }, rot = { x = 0.000, y = 267.436, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 280001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2253.034, y = 263.606, z = -1676.210 } }
}

-- 触发器
triggers = {
	{ config_id = 1280001, name = "ENTER_REGION_280001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_280001" }
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
		gadgets = { },
		regions = { 280001 },
		triggers = { "ENTER_REGION_280001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 280002, 280003, 280004, 280005 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_280001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101280, 2)
	
	return 0
end