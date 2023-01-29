-- 基础信息
local base_info = {
	group_id = 133313079
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79005, monster_id = 25210401, pos = { x = -751.727, y = -8.277, z = 5704.622 }, rot = { x = 0.000, y = 79.386, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9501, area_id = 32 },
	{ config_id = 79006, monster_id = 25210203, pos = { x = -773.870, y = 3.645, z = 5704.134 }, rot = { x = 0.000, y = 261.862, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9503, area_id = 32 },
	{ config_id = 79007, monster_id = 25210203, pos = { x = -769.439, y = 3.625, z = 5699.057 }, rot = { x = 0.000, y = 79.813, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9005, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79001, gadget_id = 70360001, pos = { x = -736.845, y = -25.837, z = 5719.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79002, gadget_id = 70211002, pos = { x = -772.748, y = 3.624, z = 5703.534 }, rot = { x = 357.766, y = 329.977, z = 356.420 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 79004, gadget_id = 70220128, pos = { x = -771.475, y = 3.656, z = 5702.580 }, rot = { x = 6.221, y = 334.507, z = 21.895 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079003, name = "ANY_MONSTER_DIE_79003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_79003", action = "action_EVENT_ANY_MONSTER_DIE_79003" },
	{ config_id = 1079008, name = "QUEST_FINISH_79008", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_79008" },
	{ config_id = 1079009, name = "GROUP_LOAD_79009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_79009", action = "action_EVENT_GROUP_LOAD_79009", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 79001 },
		regions = { },
		triggers = { "QUEST_FINISH_79008", "GROUP_LOAD_79009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 79005, 79006, 79007 },
		gadgets = { 79002, 79004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_79003", "QUEST_FINISH_79008", "GROUP_LOAD_79009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_79003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_79003(context, evt)
	-- 将configid为 79002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_79008(context, evt)
	-- 将本组内变量名为 "exist" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "exist", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_79009(context, evt)
	-- 判断变量"exist"为1
	if ScriptLib.GetGroupVariableValue(context, "exist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_79009(context, evt)
	ScriptLib.GoToGroupSuite(context, 133313079, 2)
	
	return 0
end