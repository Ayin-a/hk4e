-- 基础信息
local base_info = {
	group_id = 133220768
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
	{ config_id = 768001, gadget_id = 70710582, pos = { x = -2988.616, y = 221.410, z = -4367.617 }, rot = { x = 0.000, y = 6.887, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 768002, gadget_id = 70710583, pos = { x = -2988.551, y = 221.410, z = -4367.016 }, rot = { x = 0.000, y = 181.671, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 768003, gadget_id = 71700370, pos = { x = -2988.437, y = 220.310, z = -4367.442 }, rot = { x = 0.000, y = 345.476, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1768004, name = "QUEST_START_768004", event = EventType.EVENT_QUEST_START, source = "1905704", condition = "", action = "action_EVENT_QUEST_START_768004", trigger_count = 0 }
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
		gadgets = { 768001, 768002, 768003 },
		regions = { },
		triggers = { "QUEST_START_768004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_768004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220768, EntityType.GADGET, 768001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220768, EntityType.GADGET, 768002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end