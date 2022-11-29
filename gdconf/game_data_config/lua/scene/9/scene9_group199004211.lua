-- 基础信息
local base_info = {
	group_id = 199004211
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 211001, monster_id = 26030101, pos = { x = -313.181, y = 120.384, z = -582.401 }, rot = { x = 0.000, y = 263.044, z = 0.000 }, level = 20, drop_tag = "幼岩龙蜥", area_id = 400 },
	{ config_id = 211002, monster_id = 26030101, pos = { x = -328.094, y = 119.769, z = -570.638 }, rot = { x = 0.000, y = 118.042, z = 0.000 }, level = 20, drop_tag = "幼岩龙蜥", area_id = 400 },
	{ config_id = 211003, monster_id = 26040104, pos = { x = -327.412, y = 119.769, z = -582.893 }, rot = { x = 0.000, y = 33.684, z = 0.000 }, level = 20, drop_tag = "岩龙蜥", area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1211004, name = "ANY_MONSTER_DIE_211004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_211004", action = "action_EVENT_ANY_MONSTER_DIE_211004" }
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
		monsters = { 211001, 211002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_211004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 211003 },
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
function condition_EVENT_ANY_MONSTER_DIE_211004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_211004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004211, 2)
	
	return 0
end