-- 基础信息
local base_info = {
	group_id = 250021001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010401, pos = { x = -3.361, y = 0.085, z = 31.029 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 402 },
	{ config_id = 1002, monster_id = 21010401, pos = { x = 4.109, y = 0.085, z = 31.059 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 402 },
	{ config_id = 1003, monster_id = 20011001, pos = { x = -2.272, y = 0.085, z = 27.389 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20011001, pos = { x = 2.090, y = 0.085, z = 27.318 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1005, gadget_id = 70350002, pos = { x = -11.696, y = 0.483, z = 36.407 }, rot = { x = 0.000, y = 314.935, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350002, pos = { x = -0.113, y = 0.085, z = 9.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70360002, pos = { x = -2.957, y = 0.085, z = 6.623 }, rot = { x = 0.000, y = 181.911, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001008, name = "GADGET_CREATE_1008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1008", action = "action_EVENT_GADGET_CREATE_1008" },
	{ config_id = 1001009, name = "SELECT_OPTION_1009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1009", action = "action_EVENT_SELECT_OPTION_1009" },
	{ config_id = 1001010, name = "ANY_MONSTER_DIE_1010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1010", action = "action_EVENT_ANY_MONSTER_DIE_1010" }
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
		monsters = { 1001, 1002, 1003, 1004 },
		gadgets = { 1005, 1006, 1007 },
		regions = { },
		triggers = { "GADGET_CREATE_1008", "SELECT_OPTION_1009", "ANY_MONSTER_DIE_1010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1008(context, evt)
	if 1007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1009(context, evt)
	-- 判断是gadgetid 1007 option_id 1
	if 1007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1009(context, evt)
	-- 删除指定group： 250021001 ；指定config：1007；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250021001, 1007, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 将configid为 1005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end