-- 基础信息
local base_info = {
	group_id = 234402011
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
	{ config_id = 11001, gadget_id = 70360010, pos = { x = 0.156, y = -0.256, z = -0.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011002, name = "GADGET_CREATE_11002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11002", action = "action_EVENT_GADGET_CREATE_11002" },
	{ config_id = 1011003, name = "SELECT_OPTION_11003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11003", action = "action_EVENT_SELECT_OPTION_11003", trigger_count = 0 },
	{ config_id = 1011004, name = "SELECT_OPTION_11004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11004", action = "action_EVENT_SELECT_OPTION_11004", trigger_count = 0 }
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
		gadgets = { 11001 },
		regions = { },
		triggers = { "GADGET_CREATE_11002", "SELECT_OPTION_11003", "SELECT_OPTION_11004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_11002(context, evt)
	if 11001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 234402011, 11001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11003(context, evt)
	-- 判断是gadgetid 11001 option_id 175
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 234402010) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11003(context, evt)
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234402012, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为26，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 234402012, {12007,12013,12014,12003,12005,12001,12002,12004,12006,12009,12011,12012,12018,12019,12020,12024,12025,12023,12022,12021,12026,12027,12030,12028,12029,12031}, 26, 5, 5) then
		return -1
	end
	
	-- 删除指定group： 234402011 ；指定config：11001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 234402011, 11001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组234402011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402011, 11001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234402013中， configid为13001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402013, 13001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234402013中， configid为13002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402013, 13002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234402001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402001, 1003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11004(context, evt)
	-- 判断是gadgetid 11001 option_id 176
	if 11001 ~= evt.param1 then
		return false	
	end
	
	if 176 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 234402010) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11004(context, evt)
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234402014, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建编号为8（该怪物潮的识别id)的怪物潮，创建怪物总数为27，场上怪物最少6只，最多6只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 8, 234402014, {14001,14002,14003,14004,14005,14006,14007,14008,14009,14010,14011,14012,14013,14014,14015,14016,14017,14018,14019,14020,14021,14022,14023,14024,14025,14034,14035}, 27, 6, 6) then
		return -1
	end
	
	-- 删除指定group： 234402011 ；指定config：11001；物件身上指定option：176；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 234402011, 11001, 176) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组234402011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402011, 11001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234402013中， configid为13001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402013, 13001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234402013中， configid为13002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402013, 13002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234402001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402001, 1003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end