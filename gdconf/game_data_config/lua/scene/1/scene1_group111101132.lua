-- 基础信息
local base_info = {
	group_id = 111101132
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
	{ config_id = 132001, gadget_id = 70350263, pos = { x = 2579.558, y = 255.046, z = -1645.929 }, rot = { x = 0.000, y = 39.910, z = 0.000 }, level = 1 },
	{ config_id = 132002, gadget_id = 70350220, pos = { x = 2584.611, y = 253.114, z = -1639.766 }, rot = { x = 0.000, y = 216.797, z = 0.000 }, level = 1 },
	{ config_id = 132003, gadget_id = 70211112, pos = { x = 2584.793, y = 254.849, z = -1648.186 }, rot = { x = 0.000, y = 192.642, z = 0.000 }, level = 6, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 132007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2584.611, y = 253.114, z = -1639.766 }, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 监听场地边线状态变为201时，将节奏机切换至201状态
	{ config_id = 1132004, name = "GADGET_STATE_CHANGE_132004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_132004", action = "action_EVENT_GADGET_STATE_CHANGE_132004", trigger_count = 0 },
	-- 监听场地边线状态变为0时，将节奏机切换至0状态
	{ config_id = 1132005, name = "GADGET_STATE_CHANGE_132005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_132005", action = "action_EVENT_GADGET_STATE_CHANGE_132005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1132006, name = "ANY_GADGET_DIE_132006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_132006", action = "action_EVENT_ANY_GADGET_DIE_132006" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1132008, name = "ANY_GADGET_DIE_132008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_132008", action = "action_EVENT_ANY_GADGET_DIE_132008" }
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
		gadgets = { 132001, 132002, 132003 },
		regions = { 132007 },
		triggers = { "GADGET_STATE_CHANGE_132004", "GADGET_STATE_CHANGE_132005", "ANY_GADGET_DIE_132006", "ANY_GADGET_DIE_132008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_132004(context, evt)
	if 132002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_132004(context, evt)
	-- 将configid为 132001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_132005(context, evt)
	if 132002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_132005(context, evt)
	-- 将configid为 132001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_132006(context, evt)
	if 132003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_132006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101132, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_132008(context, evt)
	if 132001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_132008(context, evt)
	-- 将configid为 132003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end