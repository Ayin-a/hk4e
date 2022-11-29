-- 基础信息
local base_info = {
	group_id = 133212269
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269001, monster_id = 24020201, pos = { x = -3819.329, y = 249.777, z = -2342.084 }, rot = { x = 0.000, y = 156.198, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 13 },
	{ config_id = 269002, monster_id = 24020201, pos = { x = -3822.087, y = 249.777, z = -2343.417 }, rot = { x = 0.000, y = 157.938, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 13 },
	{ config_id = 269003, monster_id = 24020201, pos = { x = -3825.005, y = 249.776, z = -2344.637 }, rot = { x = 0.000, y = 156.919, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 13 }
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
	{ config_id = 1269004, name = "VARIABLE_CHANGE_269004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_269004", action = "action_EVENT_VARIABLE_CHANGE_269004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_269004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 269001, 269002, 269003 },
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
function condition_EVENT_VARIABLE_CHANGE_269004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_269004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212269, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end