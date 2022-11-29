-- 基础信息
local base_info = {
	group_id = 220102003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 20011101, pos = { x = -26.112, y = 6.159, z = 32.555 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 20011101, pos = { x = -19.135, y = 6.126, z = 32.470 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 22010301, pos = { x = -22.873, y = 6.116, z = 30.813 }, rot = { x = 0.000, y = 5.009, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 20010701, pos = { x = -24.939, y = 6.166, z = 30.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3007, monster_id = 21010502, pos = { x = -29.358, y = 6.126, z = 35.663 }, rot = { x = 0.000, y = 49.647, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3012, monster_id = 21010201, pos = { x = -28.597, y = 6.200, z = 25.637 }, rot = { x = 0.000, y = 33.411, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3013, monster_id = 21010201, pos = { x = -20.502, y = 6.064, z = 25.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3014, monster_id = 20010601, pos = { x = -20.415, y = 6.094, z = 30.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3015, monster_id = 21011002, pos = { x = -16.437, y = 6.119, z = 35.793 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3016, monster_id = 21010701, pos = { x = -18.203, y = 6.198, z = 33.878 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3017, monster_id = 20011001, pos = { x = -24.558, y = 5.961, z = 24.562 }, rot = { x = 0.000, y = 182.003, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3018, monster_id = 21010601, pos = { x = -27.675, y = 6.208, z = 34.175 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3019, monster_id = 20010701, pos = { x = -31.446, y = 6.194, z = 39.640 }, rot = { x = 0.000, y = 126.607, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3020, monster_id = 21010201, pos = { x = -24.375, y = 6.160, z = 26.579 }, rot = { x = 0.000, y = 340.646, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70350005, pos = { x = -38.655, y = 4.687, z = 37.742 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70360002, pos = { x = -22.560, y = 6.132, z = 40.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70900201, pos = { x = -87.465, y = 8.330, z = 21.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003006, name = "CHALLENGE_FAIL_3006", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3006" },
	{ config_id = 1003009, name = "GADGET_CREATE_3009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3009", action = "action_EVENT_GADGET_CREATE_3009" },
	{ config_id = 1003010, name = "SELECT_OPTION_3010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3010", action = "action_EVENT_SELECT_OPTION_3010" },
	{ config_id = 1003011, name = "CHALLENGE_SUCCESS_3011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3011" }
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
		gadgets = { 3001, 3008 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3006", "GADGET_CREATE_3009", "SELECT_OPTION_3010", "CHALLENGE_SUCCESS_3011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220102003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3009(context, evt)
	if 3008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3010(context, evt)
	-- 判断是gadgetid 3008 option_id 7
	if 3008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3010(context, evt)
	-- 将configid为 3008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220102003 ；指定config：3008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220102003, 3008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组220102002中， configid为2008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102002, 2008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为7，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 220102003, {3002,3003,3014,3005,3007,3015,3004}, 7, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 1, 220102003, 7, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3011(context, evt)
	-- 改变指定group组220102003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102003, 3001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为3024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end