-- 基础信息
local base_info = {
	group_id = 111101275
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 275009, monster_id = 20050501, pos = { x = 2345.839, y = 283.898, z = -1705.676 }, rot = { x = 0.000, y = 241.504, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 275010, monster_id = 20050501, pos = { x = 2343.457, y = 283.898, z = -1703.626 }, rot = { x = 0.000, y = 228.417, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 275011, monster_id = 20050501, pos = { x = 2341.254, y = 283.898, z = -1702.366 }, rot = { x = 0.000, y = 222.997, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 275013, monster_id = 20050701, pos = { x = 2327.466, y = 284.435, z = -1709.739 }, rot = { x = 0.000, y = 110.125, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 275014, monster_id = 20050701, pos = { x = 2327.439, y = 284.594, z = -1713.267 }, rot = { x = 0.000, y = 76.781, z = 0.000 }, level = 1, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 对应区域A的方碑
	{ config_id = 275001, gadget_id = 70900007, pos = { x = 2346.348, y = 283.898, z = -1709.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	-- 对应区域B的方碑
	{ config_id = 275002, gadget_id = 70900007, pos = { x = 2340.583, y = 283.898, z = -1715.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	-- 对应区域C的方碑
	{ config_id = 275003, gadget_id = 70900007, pos = { x = 2333.233, y = 283.898, z = -1717.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	-- 区域D的最终宝箱
	{ config_id = 275008, gadget_id = 70211032, pos = { x = 2337.139, y = 283.898, z = -1711.146 }, rot = { x = 0.000, y = 325.980, z = 0.000 }, level = 11, drop_tag = "战斗超级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 001方碑变量计数
	{ config_id = 1275004, name = "GADGET_STATE_CHANGE_275004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275004", action = "action_EVENT_GADGET_STATE_CHANGE_275004" },
	-- 002方碑
	{ config_id = 1275005, name = "GADGET_STATE_CHANGE_275005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275005", action = "action_EVENT_GADGET_STATE_CHANGE_275005" },
	-- 003方碑
	{ config_id = 1275006, name = "GADGET_STATE_CHANGE_275006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275006", action = "action_EVENT_GADGET_STATE_CHANGE_275006" },
	-- 变量检测
	{ config_id = 1275007, name = "VARIABLE_CHANGE_275007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_275007", action = "action_EVENT_VARIABLE_CHANGE_275007", trigger_count = 3 },
	-- 第一波打完怪的trigger
	{ config_id = 1275012, name = "ANY_MONSTER_DIE_275012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_275012", action = "action_EVENT_ANY_MONSTER_DIE_275012" },
	-- 打完第二波怪，解锁宝箱
	{ config_id = 1275016, name = "ANY_MONSTER_DIE_275016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_275016", action = "action_EVENT_ANY_MONSTER_DIE_275016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "222", value = 0, no_refresh = false }
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
		gadgets = { 275001, 275002, 275003, 275008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275004", "GADGET_STATE_CHANGE_275005", "GADGET_STATE_CHANGE_275006", "VARIABLE_CHANGE_275007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 275009, 275010, 275011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_275012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 275013, 275014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_275016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275004(context, evt)
	if 275001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275004(context, evt)
	-- 针对当前group内变量名为 "222" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "222", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275005(context, evt)
	if 275002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275005(context, evt)
	-- 针对当前group内变量名为 "222" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "222", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275006(context, evt)
	if 275003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275006(context, evt)
	-- 针对当前group内变量名为 "222" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "222", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_275007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"222"为3
	if ScriptLib.GetGroupVariableValue(context, "222") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_275007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101275, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_275012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101275) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101275, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_275016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275016(context, evt)
	-- 将configid为 275008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end