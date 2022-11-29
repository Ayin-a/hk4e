-- 基础信息
local base_info = {
	group_id = 133106491
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
	{ config_id = 491001, gadget_id = 70290343, pos = { x = -494.606, y = 197.566, z = 1838.543 }, rot = { x = 0.000, y = 217.052, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1491002, name = "GROUP_LOAD_491002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_491002", trigger_count = 0 }
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
		gadgets = { 491001 },
		regions = { },
		triggers = { "GROUP_LOAD_491002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_491002(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, 491001, "SGV_GeoBombCannon_Active" , 1)
	
	return 0
end