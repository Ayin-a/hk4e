-- 基础信息
local base_info = {
	group_id = 133105168
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304, monster_id = 25030201, pos = { x = 807.922, y = 262.232, z = -144.058 }, rot = { x = 0.000, y = 132.493, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, isElite = true, area_id = 9 },
	{ config_id = 168002, monster_id = 25010201, pos = { x = 805.092, y = 262.091, z = -145.331 }, rot = { x = 0.000, y = 125.559, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, isElite = true, area_id = 9 },
	{ config_id = 168003, monster_id = 25010601, pos = { x = 808.147, y = 262.508, z = -141.357 }, rot = { x = 0.000, y = 141.302, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, isElite = true, area_id = 9 },
	{ config_id = 168004, monster_id = 25020201, pos = { x = 806.296, y = 262.192, z = -144.524 }, rot = { x = 0.000, y = 127.009, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, isElite = true, area_id = 9 }
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
	{ config_id = 1168001, name = "ANY_MONSTER_DIE_168001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168001", action = "action_EVENT_ANY_MONSTER_DIE_168001" }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 304, 168002, 168003, 168004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168001(context, evt)
	if 304 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168001(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end