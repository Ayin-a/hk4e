-- 基础信息
local base_info = {
	group_id = 250015046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46003, monster_id = 24010201, pos = { x = 171.891, y = 0.500, z = 85.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 100 },
	{ config_id = 46004, monster_id = 24010101, pos = { x = 183.213, y = 0.500, z = 85.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 100 },
	{ config_id = 46005, monster_id = 20020101, pos = { x = 177.725, y = 0.500, z = 81.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 46001, gadget_id = 70360047, pos = { x = 177.809, y = 0.500, z = 85.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", state = GadgetState.Action01, isOneoff = true },
	{ config_id = 46002, gadget_id = 70360001, pos = { x = 177.799, y = 0.500, z = 84.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 46009, gadget_id = 70211021, pos = { x = 177.875, y = 0.500, z = 88.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046006, name = "ANY_MONSTER_DIE_46006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46006", action = "action_EVENT_ANY_MONSTER_DIE_46006" },
	{ config_id = 1046007, name = "GADGET_CREATE_46007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46007", action = "action_EVENT_GADGET_CREATE_46007" },
	{ config_id = 1046008, name = "SELECT_OPTION_46008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46008", action = "action_EVENT_SELECT_OPTION_46008" },
	{ config_id = 1046011, name = "SELECT_OPTION_46011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46011", action = "action_EVENT_SELECT_OPTION_46011" }
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
		gadgets = { 46001, 46002 },
		regions = { },
		triggers = { "GADGET_CREATE_46007", "SELECT_OPTION_46008", "SELECT_OPTION_46011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 46003, 46004, 46005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015046) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46006(context, evt)
	-- 创建id为46009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 46001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46007(context, evt)
	if 46002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015046, 46002, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_46008(context, evt)
	-- 判断是gadgetid 46002 option_id 177
	if 46002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015046, 46002, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_46011(context, evt)
	-- 判断是gadgetid 46002 option_id 176
	if 46002 ~= evt.param1 then
		return false	
	end
	
	if 176 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015046, 2)
	
	return 0
end