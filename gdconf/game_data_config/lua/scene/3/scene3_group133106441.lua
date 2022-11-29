-- 基础信息
local base_info = {
	group_id = 133106441
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441012, monster_id = 20011501, pos = { x = -511.491, y = 147.870, z = 1784.118 }, rot = { x = 0.000, y = 81.712, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 },
	{ config_id = 441013, monster_id = 20011401, pos = { x = -510.312, y = 147.901, z = 1781.395 }, rot = { x = 0.000, y = 66.596, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 441001, gadget_id = 70290403, pos = { x = -501.873, y = 175.837, z = 1782.758 }, rot = { x = 346.003, y = 359.395, z = 104.210 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 441002, gadget_id = 70290395, pos = { x = -517.814, y = 135.988, z = 1783.243 }, rot = { x = 4.405, y = 209.406, z = 340.867 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 441003, gadget_id = 70290308, pos = { x = -514.751, y = 137.921, z = 1783.809 }, rot = { x = 81.330, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 441005, gadget_id = 70290308, pos = { x = -514.812, y = 137.813, z = 1784.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 441008, gadget_id = 70217014, pos = { x = -515.463, y = 138.050, z = 1777.917 }, rot = { x = 3.716, y = 48.288, z = 11.594 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 441010, gadget_id = 70211121, pos = { x = -503.136, y = 137.873, z = 1784.313 }, rot = { x = 0.000, y = 264.133, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.7加的专属保底trigger，如果group Load时检测只剩一个物件（应该只有可能是坍塌墙壁），那就强制杀一下墙壁
	{ config_id = 1441004, name = "GROUP_LOAD_441004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_441004", action = "action_EVENT_GROUP_LOAD_441004", trigger_count = 0 },
	{ config_id = 1441006, name = "ANY_GADGET_DIE_441006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_441006", action = "action_EVENT_ANY_GADGET_DIE_441006" },
	{ config_id = 1441009, name = "ANY_GADGET_DIE_441009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_441009", action = "action_EVENT_ANY_GADGET_DIE_441009", trigger_count = 0 },
	{ config_id = 1441011, name = "GADGET_STATE_CHANGE_441011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_441011", action = "action_EVENT_GADGET_STATE_CHANGE_441011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 441007, gadget_id = 70290395, pos = { x = -503.745, y = 184.574, z = 1791.511 }, rot = { x = 6.112, y = 116.542, z = 55.702 }, level = 36, isOneoff = true, persistent = true, area_id = 19 }
	}
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
		gadgets = { 441001, 441002 },
		regions = { },
		triggers = { "GROUP_LOAD_441004", "ANY_GADGET_DIE_441006", "GADGET_STATE_CHANGE_441011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 441003, 441005, 441008, 441010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_441009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 441012, 441013 },
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
function condition_EVENT_GROUP_LOAD_441004(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106441}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_441004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 441002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_441006(context, evt)
	if 441001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_441006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106441, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_441009(context, evt)
	if 441003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_441009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 441002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_441011(context, evt)
	if 441010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_441011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106441, 3)
	
	return 0
end