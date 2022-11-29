-- 基础信息
local base_info = {
	group_id = 133221063
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
	{ config_id = 63001, npc_id = 12181, pos = { x = -3106.908, y = 246.970, z = -4508.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 },
	{ config_id = 63002, npc_id = 12180, pos = { x = -3117.792, y = 248.247, z = -4506.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 },
	{ config_id = 63003, npc_id = 12179, pos = { x = -3118.342, y = 249.155, z = -4496.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 },
	{ config_id = 63004, npc_id = 12208, pos = { x = -3107.196, y = 242.428, z = -4491.109 }, rot = { x = 0.000, y = 122.478, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 63005, gadget_id = 70710432, pos = { x = -3106.908, y = 246.405, z = -4508.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 63006, gadget_id = 70710432, pos = { x = -3117.792, y = 247.759, z = -4506.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 63007, gadget_id = 70710432, pos = { x = -3118.342, y = 248.917, z = -4496.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 63001完成
	{ config_id = 1063009, name = "QUEST_FINISH_63009", event = EventType.EVENT_QUEST_FINISH, source = "1901206", condition = "", action = "action_EVENT_QUEST_FINISH_63009", trigger_count = 0 },
	-- 63002完成
	{ config_id = 1063010, name = "QUEST_FINISH_63010", event = EventType.EVENT_QUEST_FINISH, source = "1901207", condition = "", action = "action_EVENT_QUEST_FINISH_63010", trigger_count = 0 },
	-- 63003完成
	{ config_id = 1063011, name = "QUEST_FINISH_63011", event = EventType.EVENT_QUEST_FINISH, source = "1901208", condition = "", action = "action_EVENT_QUEST_FINISH_63011", trigger_count = 0 }
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
		gadgets = { 63005, 63006, 63007 },
		regions = { },
		triggers = { "QUEST_FINISH_63009", "QUEST_FINISH_63010", "QUEST_FINISH_63011" },
		npcs = { 63001, 63002, 63003, 63004 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_63009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221063, EntityType.GADGET, 63007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_63010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221063, EntityType.GADGET, 63006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_63011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221063, EntityType.GADGET, 63005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end