-- 基础信息
local base_info = {
	group_id = 155005042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 26051101, pos = { x = 888.641, y = 216.910, z = 125.577 }, rot = { x = 0.000, y = 311.858, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70900008, pos = { x = 872.738, y = 217.063, z = 131.754 }, rot = { x = 0.000, y = 29.187, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 42003, gadget_id = 70350004, pos = { x = 884.828, y = 217.616, z = 127.814 }, rot = { x = 0.000, y = 314.810, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 42006, gadget_id = 70217012, pos = { x = 887.803, y = 215.957, z = 124.492 }, rot = { x = 0.000, y = 144.006, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 监测机关被开启
	{ config_id = 1042004, name = "GADGET_STATE_CHANGE_42004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42004", action = "action_EVENT_GADGET_STATE_CHANGE_42004" },
	-- 监测水龙蜥死亡
	{ config_id = 1042005, name = "ANY_MONSTER_DIE_42005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42005", action = "action_EVENT_ANY_MONSTER_DIE_42005" },
	-- 监测机关被开启
	{ config_id = 1042007, name = "GADGET_CREATE_42007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_42007", action = "action_EVENT_GADGET_CREATE_42007", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = 机关&铁门,
		monsters = { },
		gadgets = { 42002, 42003, 42006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_42004", "ANY_MONSTER_DIE_42005", "GADGET_CREATE_42007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 怪物,
		monsters = { 42001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 铁门&机关&奖励,
		monsters = { },
		gadgets = { 42002, 42003, 42006 },
		regions = { },
		triggers = { "GADGET_CREATE_42007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42004(context, evt)
	if 42002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42004(context, evt)
	-- 改变指定group组155005042中， configid为42003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155005042, 42003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005042, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42005(context, evt)
	--判断死亡怪物的configid是否为 42001
	if evt.param1 ~= 42001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42005(context, evt)
	-- 针对当前group内变量名为 "Jiguan" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Jiguan", 1, 155005044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005042, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_42007(context, evt)
	if 42002 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_42007(context, evt)
	-- 改变指定group组155005042中， configid为42003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155005042, 42003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end