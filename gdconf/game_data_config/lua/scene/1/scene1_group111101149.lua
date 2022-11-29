-- 基础信息
local base_info = {
	group_id = 111101149
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
	{ config_id = 149001, gadget_id = 70350267, pos = { x = 2695.166, y = 263.970, z = -1619.223 }, rot = { x = 0.000, y = 207.268, z = 0.000 }, level = 1 },
	{ config_id = 149002, gadget_id = 70350220, pos = { x = 2691.589, y = 263.717, z = -1626.349 }, rot = { x = 0.000, y = 24.155, z = 0.000 }, level = 1 },
	{ config_id = 149003, gadget_id = 70211112, pos = { x = 2689.552, y = 264.437, z = -1618.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 149007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2691.589, y = 263.717, z = -1626.349 }, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 监听场地边线状态变为201时，将发球机切换至201状态
	{ config_id = 1149004, name = "GADGET_STATE_CHANGE_149004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149004", action = "action_EVENT_GADGET_STATE_CHANGE_149004", trigger_count = 0 },
	-- 监听场地边线状态变为0时，将发球机切换至0状态
	{ config_id = 1149005, name = "GADGET_STATE_CHANGE_149005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149005", action = "action_EVENT_GADGET_STATE_CHANGE_149005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1149006, name = "ANY_GADGET_DIE_149006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_149006", action = "action_EVENT_ANY_GADGET_DIE_149006" },
	-- 发球机石板被销毁后，宝箱被解锁
	{ config_id = 1149008, name = "ANY_GADGET_DIE_149008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_149008", action = "action_EVENT_ANY_GADGET_DIE_149008" }
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
		gadgets = { 149001, 149002, 149003 },
		regions = { 149007 },
		triggers = { "GADGET_STATE_CHANGE_149004", "GADGET_STATE_CHANGE_149005", "ANY_GADGET_DIE_149006", "ANY_GADGET_DIE_149008" },
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
function condition_EVENT_GADGET_STATE_CHANGE_149004(context, evt)
	if 149002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149004(context, evt)
	-- 将configid为 149001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149005(context, evt)
	if 149002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149005(context, evt)
	-- 将configid为 149001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_149006(context, evt)
	if 149003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_149006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101149, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_149008(context, evt)
	if 149001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_149008(context, evt)
	-- 将configid为 149003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end