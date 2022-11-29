-- 基础信息
local base_info = {
	group_id = 133301259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 259001, monster_id = 21020501, pos = { x = -700.060, y = 115.511, z = 3800.975 }, rot = { x = 0.000, y = 142.153, z = 0.000 }, level = 33, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 25 },
	{ config_id = 259006, monster_id = 22040101, pos = { x = -695.614, y = 114.910, z = 3797.341 }, rot = { x = 0.000, y = 308.377, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 25 },
	{ config_id = 259007, monster_id = 22040101, pos = { x = -698.482, y = 114.910, z = 3795.026 }, rot = { x = 0.000, y = 348.663, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 259002, gadget_id = 70310001, pos = { x = -682.540, y = 119.304, z = 3801.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 259003, gadget_id = 70230110, pos = { x = -729.595, y = 117.883, z = 3838.710 }, rot = { x = 306.410, y = 31.891, z = 17.186 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 259004, gadget_id = 70310001, pos = { x = -688.011, y = 115.610, z = 3791.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 259008, gadget_id = 70300086, pos = { x = -699.908, y = 114.967, z = 3791.611 }, rot = { x = 347.634, y = 29.587, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 259013, gadget_id = 70310191, pos = { x = -692.647, y = 115.271, z = 3792.652 }, rot = { x = 0.000, y = 27.137, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 259014, gadget_id = 70210101, pos = { x = -727.520, y = 115.814, z = 3826.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 259015, gadget_id = 70290596, pos = { x = -726.368, y = 115.882, z = 3836.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7303634完成刷灭
	{ config_id = 1259005, name = "QUEST_FINISH_259005", event = EventType.EVENT_QUEST_FINISH, source = "7303634", condition = "", action = "action_EVENT_QUEST_FINISH_259005", trigger_count = 0 },
	{ config_id = 1259010, name = "ANY_MONSTER_DIE_259010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_259010", action = "action_EVENT_ANY_MONSTER_DIE_259010", trigger_count = 0 },
	-- 7323002开始变亮
	{ config_id = 1259011, name = "QUEST_START_259011", event = EventType.EVENT_QUEST_START, source = "7323002", condition = "", action = "action_EVENT_QUEST_START_259011", trigger_count = 0 },
	-- 7323002完成闪烁
	{ config_id = 1259012, name = "QUEST_FINISH_259012", event = EventType.EVENT_QUEST_FINISH, source = "7323002", condition = "", action = "action_EVENT_QUEST_FINISH_259012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 259009, gadget_id = 70310191, pos = { x = -726.502, y = 115.510, z = 3839.276 }, rot = { x = 0.000, y = 34.779, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 }
	}
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
		monsters = { 259001, 259006, 259007 },
		gadgets = { 259002, 259003, 259004, 259008, 259014, 259015 },
		regions = { },
		triggers = { "QUEST_FINISH_259005", "ANY_MONSTER_DIE_259010", "QUEST_START_259011", "QUEST_FINISH_259012" },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_259005(context, evt)
	-- 将configid为 259003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_259010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301259) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_259010(context, evt)
	-- 将本组内变量名为 "battle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "battle1", 1, 133301102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_259011(context, evt)
	-- 将configid为 259003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_259012(context, evt)
	-- 将configid为 259003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"