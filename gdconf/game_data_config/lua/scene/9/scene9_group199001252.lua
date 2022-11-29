-- 基础信息
local base_info = {
	group_id = 199001252
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
	{ config_id = 252001, gadget_id = 70211165, pos = { x = 247.021, y = 121.467, z = 172.902 }, rot = { x = 351.716, y = 215.226, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 252002, gadget_id = 70360001, pos = { x = 249.392, y = 120.978, z = 169.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1252003, name = "GROUP_LOAD_252003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_252003", action = "action_EVENT_GROUP_LOAD_252003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ChestAdd", value = 0, no_refresh = true }
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
		gadgets = { 252002 },
		regions = { },
		triggers = { "GROUP_LOAD_252003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 252001 },
		regions = { },
		triggers = { "GROUP_LOAD_252003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_252003(context, evt)
	-- 判断变量"ChestAdd"为1
	if ScriptLib.GetGroupVariableValue(context, "ChestAdd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_252003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001252, 2)
	
	return 0
end