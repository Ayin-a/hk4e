-- 基础信息
local base_info = {
	group_id = 133314165
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 165001, monster_id = 25410101, pos = { x = -589.893, y = 35.097, z = 4514.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 165002, gadget_id = 70211022, pos = { x = -589.936, y = 35.097, z = 4517.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 165005, gadget_id = 70360001, pos = { x = -592.082, y = 40.277, z = 4526.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1165003, name = "ANY_MONSTER_DIE_165003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_165003", action = "action_EVENT_ANY_MONSTER_DIE_165003" },
	{ config_id = 1165004, name = "QUEST_FINISH_165004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_165004" },
	{ config_id = 1165006, name = "GROUP_LOAD_165006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_165006", action = "action_EVENT_GROUP_LOAD_165006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "exist", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 165005 },
		regions = { },
		triggers = { "QUEST_FINISH_165004", "GROUP_LOAD_165006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 165001 },
		gadgets = { 165002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_165003", "GROUP_LOAD_165006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_165003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_165003(context, evt)
	-- 将configid为 165002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_QUEST_FINISH_165004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314165, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "exist" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "exist", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_165006(context, evt)
	-- 判断变量"exist"为1
	if ScriptLib.GetGroupVariableValue(context, "exist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_165006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314165, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end