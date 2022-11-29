-- 基础信息
local base_info = {
	group_id = 220133083
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83001, monster_id = 20011501, pos = { x = 4266.920, y = 568.132, z = 145.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 83005, monster_id = 20011301, pos = { x = 4267.346, y = 567.689, z = 153.093 }, rot = { x = 0.000, y = 178.128, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 83006, monster_id = 20011501, pos = { x = 4263.974, y = 570.298, z = 148.440 }, rot = { x = 0.000, y = 73.270, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 83007, monster_id = 20011301, pos = { x = 4270.825, y = 570.572, z = 149.060 }, rot = { x = 0.000, y = 297.210, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83002, gadget_id = 70211012, pos = { x = 4266.638, y = 567.789, z = 148.821 }, rot = { x = 0.000, y = 0.000, z = 355.354 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1083003, name = "ANY_MONSTER_DIE_83003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_83003", action = "action_EVENT_ANY_MONSTER_DIE_83003" },
	{ config_id = 1083004, name = "ANY_MONSTER_DIE_83004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_83004", action = "action_EVENT_ANY_MONSTER_DIE_83004", trigger_count = 0 },
	{ config_id = 1083008, name = "ANY_MONSTER_DIE_83008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_83008", action = "action_EVENT_ANY_MONSTER_DIE_83008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Wave", value = 0, no_refresh = false }
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
		monsters = { 83001 },
		gadgets = { 83002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_83003", "ANY_MONSTER_DIE_83004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 83005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_83008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 83006, 83007 },
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
function condition_EVENT_ANY_MONSTER_DIE_83003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"Wave"为2
	if ScriptLib.GetGroupVariableValue(context, "Wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_83003(context, evt)
	-- 将configid为 83002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_83004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"Wave"为0
	if ScriptLib.GetGroupVariableValue(context, "Wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_83004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133083, 2)
	
	-- 针对当前group内变量名为 "Wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_83008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"Wave"为1
	if ScriptLib.GetGroupVariableValue(context, "Wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_83008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133083, 3)
	
	-- 将本组内变量名为 "Wave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Wave", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end