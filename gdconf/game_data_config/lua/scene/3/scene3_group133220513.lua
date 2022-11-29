-- 基础信息
local base_info = {
	group_id = 133220513
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
	{ config_id = 513001, gadget_id = 70290095, pos = { x = -2717.821, y = 196.857, z = -4019.810 }, rot = { x = 359.489, y = 343.381, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 513002, gadget_id = 70211101, pos = { x = -2717.945, y = 202.192, z = -4023.502 }, rot = { x = 0.000, y = 342.960, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1513003, name = "GADGET_STATE_CHANGE_513003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513003", action = "action_EVENT_GADGET_STATE_CHANGE_513003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 513004, gadget_id = 70330092, pos = { x = -2717.854, y = 202.123, z = -4023.054 }, rot = { x = 0.000, y = 346.307, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
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
		gadgets = { 513001, 513002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_513003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513003(context, evt)
	if 513002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 513001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end