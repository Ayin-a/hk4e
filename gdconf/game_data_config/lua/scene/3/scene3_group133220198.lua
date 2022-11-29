-- 基础信息
local base_info = {
	group_id = 133220198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 28020403, pos = { x = -1897.736, y = 200.476, z = -4285.879 }, rot = { x = 356.559, y = 222.759, z = 359.860 }, level = 27, drop_tag = "走兽", pose_id = 4, area_id = 11 },
	{ config_id = 198006, monster_id = 28020403, pos = { x = -1899.401, y = 200.552, z = -4286.113 }, rot = { x = 357.482, y = 263.480, z = 357.649 }, level = 27, drop_tag = "走兽", pose_id = 5, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198003, gadget_id = 70710113, pos = { x = -1897.873, y = 200.314, z = -4285.892 }, rot = { x = 0.000, y = 262.412, z = 0.000 }, level = 27, persistent = true, interact_id = 37, area_id = 11 },
	{ config_id = 198004, gadget_id = 70211021, pos = { x = -1830.356, y = 199.312, z = -4294.527 }, rot = { x = 326.425, y = 267.888, z = 335.471 }, level = 26, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 198007, gadget_id = 70710111, pos = { x = -1898.338, y = 200.513, z = -4286.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 12, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198002, name = "GADGET_STATE_CHANGE_198002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198002", action = "action_EVENT_GADGET_STATE_CHANGE_198002" },
	{ config_id = 1198005, name = "GADGET_STATE_CHANGE_198005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198005", action = "action_EVENT_GADGET_STATE_CHANGE_198005" },
	-- 保底
	{ config_id = 1198008, name = "GROUP_LOAD_198008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_198008", action = "action_EVENT_GROUP_LOAD_198008", trigger_count = 0 },
	-- 保底
	{ config_id = 1198009, name = "GROUP_LOAD_198009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_198009", action = "action_EVENT_GROUP_LOAD_198009", trigger_count = 0 },
	{ config_id = 1198010, name = "GADGET_CREATE_198010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198010", action = "action_EVENT_GADGET_CREATE_198010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 198001 },
		gadgets = { 198003, 198007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_198002", "GADGET_STATE_CHANGE_198005", "GROUP_LOAD_198008", "GROUP_LOAD_198009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 198003 },
		regions = { },
		triggers = { "GADGET_CREATE_198010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_198002(context, evt)
	if 198004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220198, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "dog" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "dog", 1, 133220656) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_198005(context, evt)
	if 198003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198005(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220198, EntityType.MONSTER, 198001)
	
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 198006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为198004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 198004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6028, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_198008(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_198008(context, evt)
	-- 将configid为 198003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_198009(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_198009(context, evt)
	-- 将configid为 198003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198010(context, evt)
	if 198003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198010(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220198, EntityType.MONSTER, 198006)
	
		
	
	-- 将configid为 198003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end