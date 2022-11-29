-- 基础信息
local base_info = {
	group_id = 133210098
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98001, monster_id = 21010301, pos = { x = -3867.571, y = 200.442, z = -430.988 }, rot = { x = 0.000, y = 212.071, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 98004, monster_id = 21010301, pos = { x = -3864.669, y = 200.407, z = -432.625 }, rot = { x = 0.000, y = 207.025, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 98005, monster_id = 21030101, pos = { x = -3868.957, y = 202.204, z = -435.771 }, rot = { x = 0.000, y = 35.402, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 98006, monster_id = 21020701, pos = { x = -3870.013, y = 201.855, z = -446.867 }, rot = { x = 0.000, y = 308.186, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 17 },
	{ config_id = 98007, monster_id = 21020701, pos = { x = -3882.303, y = 209.248, z = -456.555 }, rot = { x = 0.000, y = 38.828, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 98002, gadget_id = 70211012, pos = { x = -3870.107, y = 202.234, z = -437.300 }, rot = { x = 359.244, y = 36.232, z = 0.582 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1098003, name = "ANY_MONSTER_DIE_98003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_98003", action = "action_EVENT_ANY_MONSTER_DIE_98003" },
	{ config_id = 1098008, name = "QUEST_START_98008", event = EventType.EVENT_QUEST_START, source = "7215109", condition = "", action = "action_EVENT_QUEST_START_98008", trigger_count = 0 },
	{ config_id = 1098009, name = "GROUP_LOAD_98009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_98009", action = "action_EVENT_GROUP_LOAD_98009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestFinish", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_98008", "GROUP_LOAD_98009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 98001, 98004, 98005, 98006, 98007 },
		gadgets = { 98002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_98003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_98003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_98003(context, evt)
	-- 将configid为 98002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98002, GadgetState.Default) then
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
function action_EVENT_QUEST_START_98008(context, evt)
	-- 将本组内变量名为 "QuestFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_98009(context, evt)
	-- 判断变量"QuestFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_98009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210098, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end