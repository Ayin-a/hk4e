-- 基础信息
local base_info = {
	group_id = 240021009
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
	{ config_id = 9001, gadget_id = 70360010, pos = { x = 0.000, y = 0.100, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9010, gadget_id = 70350253, pos = { x = 16.000, y = 2.500, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 9011, gadget_id = 70350253, pos = { x = -4.000, y = 2.500, z = 14.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 9012, gadget_id = 70350253, pos = { x = 3.862, y = 2.341, z = 14.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9013, gadget_id = 70350253, pos = { x = 13.237, y = 2.341, z = 13.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9014, gadget_id = 70350253, pos = { x = -11.647, y = 2.341, z = 13.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9015, gadget_id = 70350253, pos = { x = 7.356, y = 2.341, z = -0.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9016, gadget_id = 70350253, pos = { x = -7.000, y = 5.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3 },
	{ config_id = 9017, gadget_id = 70350253, pos = { x = -15.213, y = 2.341, z = -0.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9018, gadget_id = 70350253, pos = { x = 12.608, y = 2.341, z = -11.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9019, gadget_id = 70350253, pos = { x = 1.002, y = 2.341, z = -11.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9020, gadget_id = 70350253, pos = { x = -8.946, y = 2.341, z = -11.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "SELECT_OPTION_9002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9002", action = "action_EVENT_SELECT_OPTION_9002" },
	{ config_id = 1009003, name = "GADGET_CREATE_9003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9003", action = "action_EVENT_GADGET_CREATE_9003" },
	{ config_id = 1009004, name = "SELECT_OPTION_9004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9004", action = "action_EVENT_SELECT_OPTION_9004" },
	{ config_id = 1009005, name = "SELECT_OPTION_9005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9005", action = "action_EVENT_SELECT_OPTION_9005" },
	{ config_id = 1009006, name = "SELECT_OPTION_9006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9006", action = "action_EVENT_SELECT_OPTION_9006" },
	{ config_id = 1009007, name = "SELECT_OPTION_9007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9007", action = "action_EVENT_SELECT_OPTION_9007" },
	{ config_id = 1009008, name = "SELECT_OPTION_9008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9008", action = "action_EVENT_SELECT_OPTION_9008" },
	{ config_id = 1009009, name = "SELECT_OPTION_9009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9009", action = "action_EVENT_SELECT_OPTION_9009" }
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
		gadgets = { 9001, 9010, 9011, 9012, 9013, 9014, 9015, 9016, 9017, 9018, 9019, 9020 },
		regions = { },
		triggers = { "SELECT_OPTION_9002", "GADGET_CREATE_9003", "SELECT_OPTION_9004", "SELECT_OPTION_9005", "SELECT_OPTION_9006", "SELECT_OPTION_9007", "SELECT_OPTION_9008", "SELECT_OPTION_9009" },
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
function condition_EVENT_SELECT_OPTION_9002(context, evt)
	-- 判断是gadgetid 9001 option_id 178
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 178 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240021015, 2)
	
	-- 创建编号为10（该怪物潮的识别id)的怪物潮，创建怪物总数为199，场上怪物最少6只，最多6只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 10, 240021015, {15001,15002,15003,15004,15005,15006,15007,15008,15009,15010,15011,15012,15013,15014}, 199, 6, 6) then
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9003(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240021009, 9001, {177,178,184,180,185,186,179}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9004(context, evt)
	-- 判断是gadgetid 9001 option_id 177
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240021009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240021009, 9001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240021012, {12001,12002,12003,12004,12005}, 50, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 240021012, {12006,12007,12008,12009,12010}, 50, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 240021012, {12011,12012,12013,12014,12015}, 50, 2, 2) then
		return -1
	end
	
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为50，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 240021013, {13002,13003,13004,13005}, 50, 1, 1) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021014, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 0 ；指定config：9001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 0, 9001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 0 ；指定config：9001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 0, 9001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9005(context, evt)
	-- 判断是gadgetid 9001 option_id 184
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 184 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240021016, 2)
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9006(context, evt)
	-- 判断是gadgetid 9001 option_id 180
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 180 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240021017, 2)
	
	-- 创建编号为15（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 15, 240021017, {17001,17002,17003,17004,17005,17006,17007,17008,17009,17010,17011,17012,17013,17014}, 99, 5, 5) then
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9007(context, evt)
	-- 判断是gadgetid 9001 option_id 185
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 185 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240021018, 2)
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9008(context, evt)
	-- 判断是gadgetid 9001 option_id 186
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 186 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240021019, 2)
	
	-- 创建编号为15（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 15, 240021019, {19001,19002,19003,19004,19005,19006,19007,19008,19009,19010,19011,19012,19013,19014}, 99, 2, 2) then
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9009(context, evt)
	-- 判断是gadgetid 9001 option_id 179
	if 9001 ~= evt.param1 then
		return false	
	end
	
	if 179 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240021020, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：177；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240021009 ；指定config：9001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240021009, 9001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end