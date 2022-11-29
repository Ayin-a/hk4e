-- 基础信息
local base_info = {
	group_id = 133220381
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
	{ config_id = 381002, gadget_id = 70900387, pos = { x = -2818.503, y = 204.004, z = -4446.466 }, rot = { x = 10.108, y = 22.892, z = 353.787 }, level = 19, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 381005, gadget_id = 70900387, pos = { x = -2817.760, y = 203.370, z = -4443.300 }, rot = { x = 357.540, y = 156.522, z = 11.593 }, level = 27, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1381003, name = "ANY_GADGET_DIE_381003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_381003", action = "action_EVENT_ANY_GADGET_DIE_381003" },
	{ config_id = 1381006, name = "ANY_GADGET_DIE_381006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_381006", action = "action_EVENT_ANY_GADGET_DIE_381006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 381001, gadget_id = 70211101, pos = { x = -2815.704, y = 204.268, z = -4445.775 }, rot = { x = 355.946, y = 254.280, z = 1.334 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1381004, name = "GADGET_STATE_CHANGE_381004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_381004", action = "action_EVENT_GADGET_STATE_CHANGE_381004", trigger_count = 0 }
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
		gadgets = { 381002, 381005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_381003", "ANY_GADGET_DIE_381006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_381003(context, evt)
	if 381002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_381003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 381005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_381006(context, evt)
	if 381005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_381006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 381002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end