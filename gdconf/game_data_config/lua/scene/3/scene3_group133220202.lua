-- 基础信息
local base_info = {
	group_id = 133220202
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
	{ config_id = 202002, npc_id = 20300, pos = { x = -2479.591, y = 447.248, z = -4411.225 }, rot = { x = 0.000, y = 33.607, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 202001, gadget_id = 70290151, pos = { x = -2481.154, y = 447.670, z = -4418.331 }, rot = { x = 0.000, y = 59.378, z = 0.000 }, level = 27, guest_ban_drop = 3, area_id = 11 },
	{ config_id = 202003, gadget_id = 70950098, pos = { x = -2480.946, y = 447.423, z = -4418.171 }, rot = { x = 0.000, y = 48.189, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1202006, name = "GADGETTALK_DONE_202006", event = EventType.EVENT_GADGETTALK_DONE, source = "6800302", condition = "", action = "action_EVENT_GADGETTALK_DONE_202006", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 202001, 202003 },
		regions = { },
		triggers = { "GADGETTALK_DONE_202006" },
		npcs = { 202002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_202006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 202001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end