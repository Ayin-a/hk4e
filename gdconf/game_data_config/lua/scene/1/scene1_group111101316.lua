-- 基础信息
local base_info = {
	group_id = 111101316
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 316002, monster_id = 21010101, pos = { x = 2246.136, y = 244.120, z = -1578.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316003, monster_id = 21010101, pos = { x = 2247.987, y = 244.120, z = -1580.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316004, monster_id = 21010101, pos = { x = 2249.814, y = 244.120, z = -1579.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316005, monster_id = 21020201, pos = { x = 2241.285, y = 244.120, z = -1571.255 }, rot = { x = 0.000, y = 101.392, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316006, monster_id = 21010301, pos = { x = 2240.576, y = 244.120, z = -1573.988 }, rot = { x = 0.000, y = 87.646, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316007, monster_id = 21010301, pos = { x = 2244.301, y = 244.120, z = -1570.071 }, rot = { x = 0.000, y = 142.145, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316008, monster_id = 21010601, pos = { x = 2252.385, y = 244.205, z = -1565.784 }, rot = { x = 0.000, y = 214.177, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316010, monster_id = 21010401, pos = { x = 2242.226, y = 244.120, z = -1575.563 }, rot = { x = 0.000, y = 69.364, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316011, monster_id = 21010401, pos = { x = 2257.405, y = 244.442, z = -1569.102 }, rot = { x = 0.000, y = 248.124, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 316012, monster_id = 21020201, pos = { x = 2258.701, y = 244.798, z = -1563.562 }, rot = { x = 0.000, y = 231.953, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 316001, gadget_id = 70350082, pos = { x = 2248.952, y = 243.742, z = -1573.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 316013, gadget_id = 70950145, pos = { x = 2248.955, y = 244.813, z = -1573.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 316015, gadget_id = 70520001, pos = { x = 2253.379, y = 244.120, z = -1576.109 }, rot = { x = 0.000, y = 310.620, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 316019, gadget_id = 70211021, pos = { x = 2248.987, y = 243.758, z = -1571.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1316009, name = "GADGET_CREATE_316009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_316009", action = "action_EVENT_GADGET_CREATE_316009", trigger_count = 0 },
	{ config_id = 1316014, name = "SELECT_OPTION_316014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_316014", action = "action_EVENT_SELECT_OPTION_316014", trigger_count = 0 },
	{ config_id = 1316016, name = "ANY_MONSTER_DIE_316016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_316016", action = "action_EVENT_ANY_MONSTER_DIE_316016" },
	{ config_id = 1316017, name = "GADGET_STATE_CHANGE_316017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_316017", action = "action_EVENT_GADGET_STATE_CHANGE_316017" },
	{ config_id = 1316018, name = "CHALLENGE_SUCCESS_316018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_316018" },
	{ config_id = 1316020, name = "CHALLENGE_FAIL_316020", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_316020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "MonsterDeathCount", value = 0, no_refresh = true }
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
		gadgets = { 316001, 316013, 316015 },
		regions = { },
		triggers = { "GADGET_CREATE_316009", "SELECT_OPTION_316014", "GADGET_STATE_CHANGE_316017", "CHALLENGE_SUCCESS_316018", "CHALLENGE_FAIL_316020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 316007, 316008, 316010, 316011, 316012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_316016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 316002, 316003, 316004, 316005, 316006 },
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
function condition_EVENT_GADGET_CREATE_316009(context, evt)
	if 316013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_316009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101316, 316013, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_316014(context, evt)
	-- 判断是gadgetid 316013 option_id 177
	if 316013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_316014(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 111101316, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101316, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 316001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_316016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_316016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101316, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_316017(context, evt)
	if 316019 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_316017(context, evt)
	-- 改变指定group组111101321中， configid为321001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101321, 321001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_316018(context, evt)
	-- 将configid为 316001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为316019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 316019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_316020(context, evt)
	-- 创建id为316013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 316013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 316001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101316, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101316, 3)
	
	return 0
end