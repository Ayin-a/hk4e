-- 基础信息
local base_info = {
	group_id = 231602003
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
	{ config_id = 3001, gadget_id = 70350023, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70350052, pos = { x = 0.000, y = 0.150, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "GADGET_CREATE_3003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3003", action = "action_EVENT_GADGET_CREATE_3003" },
	{ config_id = 1003004, name = "SELECT_OPTION_3004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3004", action = "action_EVENT_SELECT_OPTION_3004", trigger_count = 0 },
	{ config_id = 1003005, name = "SELECT_OPTION_3005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3005", action = "action_EVENT_SELECT_OPTION_3005", trigger_count = 0 }
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
		gadgets = { 3001, 3002 },
		regions = { },
		triggers = { "GADGET_CREATE_3003", "SELECT_OPTION_3004", "SELECT_OPTION_3005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_3003(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 231602003, 3001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3004(context, evt)
	-- 判断是gadgetid 3001 option_id 175
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 231602001) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3004(context, evt)
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为10，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 231602002, {2001,2002}, 10, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为10，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 231602002, {2004,2003}, 10, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为5，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 231602002, {2005}, 5, 1, 1) then
		return -1
	end
	
	-- 删除指定group： 231602003 ；指定config：3001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 231602003, 3001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组231602003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602003, 3001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3005(context, evt)
	-- 判断是gadgetid 3001 option_id 176
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 176 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 231602001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3005(context, evt)
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231602002, 2)
	
	-- 删除指定group： 231602003 ；指定config：3001；物件身上指定option：176；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 231602003, 3001, 176) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组231602003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602003, 3001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231602008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231602008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end