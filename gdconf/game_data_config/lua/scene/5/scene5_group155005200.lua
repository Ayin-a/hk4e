-- 基础信息
local base_info = {
	group_id = 155005200
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
	{ config_id = 200001, gadget_id = 70290279, pos = { x = 228.125, y = 331.445, z = 292.047 }, rot = { x = 0.000, y = 306.368, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 200002, gadget_id = 70900049, pos = { x = 232.666, y = 325.613, z = 288.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 200003, gadget_id = 70217012, pos = { x = 230.701, y = 325.505, z = 291.190 }, rot = { x = 1.427, y = 343.247, z = 0.271 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 200004, gadget_id = 70350006, pos = { x = 251.549, y = 314.669, z = 281.255 }, rot = { x = 0.000, y = 35.624, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 200006, gadget_id = 70310001, pos = { x = 243.805, y = 313.835, z = 283.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 200007, gadget_id = 70310001, pos = { x = 241.254, y = 313.868, z = 279.455 }, rot = { x = 0.000, y = 57.531, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1200005, name = "GADGET_STATE_CHANGE_200005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200005", action = "action_EVENT_GADGET_STATE_CHANGE_200005", trigger_count = 0 }
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
		gadgets = { 200001, 200002, 200003, 200004, 200006, 200007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_200005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005200, 200002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 200001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end