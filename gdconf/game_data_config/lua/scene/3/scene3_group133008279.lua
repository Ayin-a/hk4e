-- 基础信息
local base_info = {
	group_id = 133008279
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
	{ config_id = 279001, gadget_id = 70220047, pos = { x = 894.961, y = 350.334, z = -784.805 }, rot = { x = 355.281, y = 283.397, z = 22.423 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 279002, gadget_id = 70590025, pos = { x = 918.558, y = 360.365, z = -774.695 }, rot = { x = 353.179, y = 0.760, z = 337.952 }, level = 30, area_id = 10 },
	{ config_id = 279003, gadget_id = 70360118, pos = { x = 861.906, y = 345.870, z = -789.771 }, rot = { x = 19.079, y = 80.463, z = 357.658 }, level = 30, isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1279004, name = "QUEST_FINISH_279004", event = EventType.EVENT_QUEST_FINISH, source = "7014119", condition = "", action = "action_EVENT_QUEST_FINISH_279004" }
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
		gadgets = { 279001, 279002, 279003 },
		regions = { },
		triggers = { "QUEST_FINISH_279004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_279004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end