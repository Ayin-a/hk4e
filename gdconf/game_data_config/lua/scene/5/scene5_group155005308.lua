-- 基础信息
local base_info = {
	group_id = 155005308
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
	{ config_id = 308001, gadget_id = 70290279, pos = { x = 224.561, y = 342.483, z = 195.086 }, rot = { x = 0.000, y = 245.555, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 308002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 232.377, y = 339.859, z = 198.177 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1308002, name = "ENTER_REGION_308002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "", action = "action_EVENT_ENTER_REGION_308002", trigger_count = 0 }
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
		gadgets = { 308001 },
		regions = { 308002 },
		triggers = { "ENTER_REGION_308002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_308002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 308001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end