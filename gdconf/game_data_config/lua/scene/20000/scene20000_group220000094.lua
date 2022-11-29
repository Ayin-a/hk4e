-- 基础信息
local base_info = {
	group_id = 220000094
}

-- DEFS_MISCS
function Avatar_Eula_Plot_Fail(context)
        ScriptLib.SetGroupVariableValue(context, "youla", 1)
        ScriptLib.PrintContextLog(context, "youla fail")
        return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94005, monster_id = 20010801, pos = { x = 104.163, y = 0.540, z = 477.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94006, monster_id = 20010801, pos = { x = 106.413, y = 0.540, z = 474.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94009, monster_id = 20010901, pos = { x = 95.887, y = 0.540, z = 477.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94010, monster_id = 20011001, pos = { x = 94.447, y = 0.540, z = 477.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94011, monster_id = 20011001, pos = { x = 95.963, y = 0.540, z = 478.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94013, monster_id = 20010901, pos = { x = 99.883, y = 0.540, z = 482.462 }, rot = { x = 0.000, y = 186.835, z = 0.000 }, level = 1 },
	{ config_id = 94014, monster_id = 20011101, pos = { x = 101.933, y = 0.540, z = 482.312 }, rot = { x = 0.000, y = 201.423, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94001, gadget_id = 70350081, pos = { x = 100.086, y = 0.540, z = 474.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94002, gadget_id = 70360001, pos = { x = 100.172, y = 2.209, z = 474.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "GADGET_CREATE_94003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_94003", action = "action_EVENT_GADGET_CREATE_94003" },
	{ config_id = 1094004, name = "SELECT_OPTION_94004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_94004", action = "action_EVENT_SELECT_OPTION_94004" },
	{ config_id = 1094007, name = "ANY_MONSTER_DIE_94007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94007", action = "action_EVENT_ANY_MONSTER_DIE_94007" },
	{ config_id = 1094008, name = "VARIABLE_CHANGE_94008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_94008", action = "action_EVENT_VARIABLE_CHANGE_94008", tag = "666" },
	{ config_id = 1094012, name = "ANY_MONSTER_DIE_94012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94012", action = "action_EVENT_ANY_MONSTER_DIE_94012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "youla", value = 0, no_refresh = false }
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
		gadgets = { 94001, 94002 },
		regions = { },
		triggers = { "GADGET_CREATE_94003", "SELECT_OPTION_94004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 94005, 94006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_94007", "VARIABLE_CHANGE_94008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 94009, 94010, 94011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_94012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 94013, 94014 },
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
function condition_EVENT_GADGET_CREATE_94003(context, evt)
	if 94002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_94003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220000094, 94002, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "youla" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "youla", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_94004(context, evt)
	-- 判断是gadgetid 94002 option_id 2902
	if 94002 ~= evt.param1 then
		return false	
	end
	
	if 2902 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_94004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220000094, 2)
	
	-- 删除指定group： 220000094 ；指定config：94002；物件身上指定option：2902；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220000094, 94002, 2902) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 开启编号为888，挑战内容为2的区域挑战
	ScriptLib.CreateFatherChallenge(context, 10121, 2008, 180, {success = 1, fail =1})
	ScriptLib.AttachChildChallenge(context, 10121, 10, 2,{180, 220000094, 7},{}, {success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 10121, 11, 223,{180, 3, 666, 1},{}, {success=0, fail=1})
	ScriptLib.StartFatherChallenge(context, 10121)
	
	-- 将本组内变量名为 "youla" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "youla", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_94007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220000094, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_94008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"youla"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "youla", 220000094) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_94008(context, evt)
	-- 终止识别id为11的挑战，并判定失败
		ScriptLib.StopChallenge(context, 11, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_94012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94012(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220000094, 4)
	
	return 0
end