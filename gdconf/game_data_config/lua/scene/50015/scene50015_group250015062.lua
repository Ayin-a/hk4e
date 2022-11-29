-- 基础信息
local base_info = {
	group_id = 250015062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 21010101, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62002, monster_id = 21020201, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62003, monster_id = 21020501, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62007, monster_id = 21010101, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62008, monster_id = 21020201, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62009, monster_id = 21020501, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62010, monster_id = 21010101, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62011, monster_id = 21020201, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 62012, monster_id = 21020501, pos = { x = 55.757, y = 0.500, z = 4.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62004, gadget_id = 70360002, pos = { x = 55.757, y = 0.500, z = 36.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1062005, name = "SELECT_OPTION_62005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62005", action = "action_EVENT_SELECT_OPTION_62005" },
	{ config_id = 1062006, name = "GADGET_CREATE_62006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62006", action = "action_EVENT_GADGET_CREATE_62006" },
	{ config_id = 1062013, name = "SELECT_OPTION_62013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62013", action = "action_EVENT_SELECT_OPTION_62013" },
	{ config_id = 1062014, name = "SELECT_OPTION_62014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62014", action = "action_EVENT_SELECT_OPTION_62014" },
	{ config_id = 1062015, name = "SELECT_OPTION_62015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62015", action = "action_EVENT_SELECT_OPTION_62015" },
	{ config_id = 1062016, name = "SELECT_OPTION_62016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62016", action = "action_EVENT_SELECT_OPTION_62016" },
	{ config_id = 1062017, name = "SELECT_OPTION_62017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62017", action = "action_EVENT_SELECT_OPTION_62017" },
	{ config_id = 1062018, name = "SELECT_OPTION_62018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62018", action = "action_EVENT_SELECT_OPTION_62018" },
	{ config_id = 1062019, name = "SELECT_OPTION_62019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62019", action = "action_EVENT_SELECT_OPTION_62019" },
	{ config_id = 1062020, name = "SELECT_OPTION_62020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62020", action = "action_EVENT_SELECT_OPTION_62020" }
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
		gadgets = { 62004 },
		regions = { },
		triggers = { "SELECT_OPTION_62005", "GADGET_CREATE_62006", "SELECT_OPTION_62013", "SELECT_OPTION_62014", "SELECT_OPTION_62015", "SELECT_OPTION_62016", "SELECT_OPTION_62017", "SELECT_OPTION_62018", "SELECT_OPTION_62019", "SELECT_OPTION_62020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 62001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 62002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 62003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 62007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 62008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 62009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 62010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 62011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 62012 },
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
function condition_EVENT_SELECT_OPTION_62005(context, evt)
	-- 判断是gadgetid 62004 option_id 184
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 184 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62005(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_62006(context, evt)
	if 62004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015062, 62004, {184,185,186,201,202,203,181,182,183}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62013(context, evt)
	-- 判断是gadgetid 62004 option_id 185
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 185 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62013(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62014(context, evt)
	-- 判断是gadgetid 62004 option_id 186
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 186 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62014(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62015(context, evt)
	-- 判断是gadgetid 62004 option_id 201
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 201 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62015(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62016(context, evt)
	-- 判断是gadgetid 62004 option_id 202
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 202 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62016(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62017(context, evt)
	-- 判断是gadgetid 62004 option_id 203
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 203 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62017(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62018(context, evt)
	-- 判断是gadgetid 62004 option_id 181
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 181 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62018(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62019(context, evt)
	-- 判断是gadgetid 62004 option_id 182
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 182 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62019(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62020(context, evt)
	-- 判断是gadgetid 62004 option_id 183
	if 62004 ~= evt.param1 then
		return false	
	end
	
	if 183 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62020(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250015062, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015062, 10)
	
	return 0
end