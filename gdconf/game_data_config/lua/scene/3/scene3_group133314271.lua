-- 基础信息
local base_info = {
	group_id = 133314271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271004, monster_id = 25210202, pos = { x = -112.816, y = 69.507, z = 5305.624 }, rot = { x = 0.000, y = 323.878, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 32 },
	{ config_id = 271005, monster_id = 25310201, pos = { x = -89.803, y = 75.099, z = 5287.448 }, rot = { x = 0.000, y = 336.276, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9003, area_id = 32 },
	{ config_id = 271006, monster_id = 25210202, pos = { x = -110.699, y = 65.792, z = 5274.320 }, rot = { x = 0.000, y = 358.048, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9004, area_id = 32 },
	{ config_id = 271007, monster_id = 25210501, pos = { x = -110.585, y = 64.735, z = 5282.130 }, rot = { x = 0.000, y = 171.379, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
	{ config_id = 271008, monster_id = 25210501, pos = { x = -114.299, y = 63.546, z = 5280.792 }, rot = { x = 0.000, y = 171.379, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 32 },
	{ config_id = 271009, monster_id = 25310101, pos = { x = -92.022, y = 75.578, z = 5293.521 }, rot = { x = 0.000, y = 130.214, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9003, area_id = 32 },
	{ config_id = 271011, monster_id = 25210202, pos = { x = -110.513, y = 69.536, z = 5299.420 }, rot = { x = 0.000, y = 62.770, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 32 },
	{ config_id = 271019, monster_id = 28060901, pos = { x = -113.043, y = 69.825, z = 5310.266 }, rot = { x = 0.000, y = 191.219, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", pose_id = 2, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 271001, gadget_id = 71700430, pos = { x = -109.095, y = 69.537, z = 5299.937 }, rot = { x = 0.000, y = 248.043, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 271002, gadget_id = 70211022, pos = { x = -91.542, y = 75.459, z = 5290.692 }, rot = { x = 0.000, y = 264.252, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 271010, gadget_id = 70220128, pos = { x = -111.960, y = 69.642, z = 5301.245 }, rot = { x = 0.000, y = 48.497, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 271012, gadget_id = 71700520, pos = { x = -112.887, y = 69.765, z = 5301.401 }, rot = { x = 0.000, y = 3.726, z = 359.409 }, level = 32, area_id = 32 },
	{ config_id = 271013, gadget_id = 71700520, pos = { x = -111.980, y = 69.765, z = 5301.986 }, rot = { x = 0.000, y = 3.726, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 271014, gadget_id = 71700519, pos = { x = -111.498, y = 69.765, z = 5300.806 }, rot = { x = 0.000, y = 3.726, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 271015, gadget_id = 70220128, pos = { x = -95.197, y = 73.073, z = 5286.845 }, rot = { x = 355.647, y = 74.141, z = 357.931 }, level = 32, area_id = 32 },
	{ config_id = 271016, gadget_id = 70710873, pos = { x = -112.202, y = 69.765, z = 5301.031 }, rot = { x = 0.000, y = 3.726, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 271017, gadget_id = 70210101, pos = { x = -109.670, y = 69.572, z = 5300.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 271018, gadget_id = 70220049, pos = { x = -109.769, y = 65.708, z = 5274.945 }, rot = { x = 0.000, y = 9.258, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 271020, gadget_id = 70360001, pos = { x = -99.903, y = 71.430, z = 5296.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 271025, gadget_id = 70210101, pos = { x = -106.938, y = 75.363, z = 5303.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 271026, gadget_id = 70210101, pos = { x = -106.486, y = 65.774, z = 5267.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 32 },
	{ config_id = 271027, gadget_id = 70210101, pos = { x = -87.999, y = 75.546, z = 5290.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 271028, gadget_id = 70210101, pos = { x = -84.678, y = 76.972, z = 5278.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1271003, name = "ANY_MONSTER_DIE_271003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_271003", action = "action_EVENT_ANY_MONSTER_DIE_271003" },
	-- 变量改为1，营地消失
	{ config_id = 1271021, name = "QUEST_FINISH_271021", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_271021" },
	-- 变量改为0，营地出现
	{ config_id = 1271022, name = "QUEST_FINISH_271022", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_271022" },
	-- 如果变量为0，去suite1
	{ config_id = 1271023, name = "GROUP_LOAD_271023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_271023", action = "action_EVENT_GROUP_LOAD_271023" },
	-- 如果变量为1，去suite2
	{ config_id = 1271024, name = "GROUP_LOAD_271024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_271024", action = "action_EVENT_GROUP_LOAD_271024" }
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
		monsters = { 271004, 271005, 271006, 271007, 271008, 271009, 271011, 271019 },
		gadgets = { 271001, 271002, 271010, 271012, 271013, 271014, 271015, 271016, 271017, 271018, 271025, 271026, 271027, 271028 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_271003", "QUEST_FINISH_271021", "QUEST_FINISH_271022", "GROUP_LOAD_271023", "GROUP_LOAD_271024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 271020 },
		regions = { },
		triggers = { "QUEST_FINISH_271021", "QUEST_FINISH_271022", "GROUP_LOAD_271023", "GROUP_LOAD_271024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_271003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_271003(context, evt)
	-- 将configid为 271002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271002, GadgetState.Default) then
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
function action_EVENT_QUEST_FINISH_271021(context, evt)
	-- 将本组内变量名为 "exist" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "exist", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_271022(context, evt)
	-- 将本组内变量名为 "exist" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "exist", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_271023(context, evt)
	-- 判断变量"exist"为0
	if ScriptLib.GetGroupVariableValue(context, "exist") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_271023(context, evt)
	ScriptLib.GoToGroupSuite(context, 133314271, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_271024(context, evt)
	-- 判断变量"exist"为1
	if ScriptLib.GetGroupVariableValue(context, "exist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_271024(context, evt)
	ScriptLib.GoToGroupSuite(context, 133314271, 2)
	
	return 0
end