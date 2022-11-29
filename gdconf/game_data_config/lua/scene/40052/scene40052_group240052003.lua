-- 基础信息
local base_info = {
	group_id = 240052003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3005, monster_id = 25210201, pos = { x = 735.201, y = 71.353, z = 333.224 }, rot = { x = 0.000, y = 189.503, z = 0.000 }, level = 1, disableWander = true, pose_id = 9006 },
	{ config_id = 3006, monster_id = 25210401, pos = { x = 732.120, y = 71.497, z = 332.693 }, rot = { x = 0.000, y = 275.604, z = 0.000 }, level = 1, disableWander = true, pose_id = 9001 },
	{ config_id = 3007, monster_id = 25210401, pos = { x = 738.230, y = 71.787, z = 337.008 }, rot = { x = 0.000, y = 268.227, z = 0.000 }, level = 1, disableWander = true, pose_id = 9503 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70290508, pos = { x = 735.044, y = 71.477, z = 329.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70360001, pos = { x = 735.044, y = 71.525, z = 329.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 220 } } },
	{ config_id = 3003, gadget_id = 70290484, pos = { x = 735.044, y = 71.477, z = 329.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "SELECT_OPTION_3004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3004", action = "action_EVENT_SELECT_OPTION_3004" },
	{ config_id = 1003008, name = "ANY_MONSTER_DIE_3008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3008", action = "action_EVENT_ANY_MONSTER_DIE_3008" }
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
		monsters = { 3005, 3006, 3007 },
		gadgets = { 3001, 3003 },
		regions = { },
		triggers = { "SELECT_OPTION_3004", "ANY_MONSTER_DIE_3008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3002 },
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
function condition_EVENT_SELECT_OPTION_3004(context, evt)
	-- 判断是gadgetid 3002 option_id 220
	if 3002 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3004(context, evt)
	-- 删除指定group： 240052003 ；指定config：3002；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240052003, 3002, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240052003, 2)
	
	return 0
end