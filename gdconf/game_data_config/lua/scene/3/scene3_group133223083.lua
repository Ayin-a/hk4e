-- 基础信息
local base_info = {
	group_id = 133223083
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83004, monster_id = 24020301, pos = { x = -5909.013, y = 165.597, z = -2642.075 }, rot = { x = 0.000, y = 32.506, z = 0.000 }, level = 33, drop_tag = "拟生机关", affix = { 5009 }, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83001, gadget_id = 70211111, pos = { x = -5901.464, y = 169.212, z = -2647.073 }, rot = { x = 0.000, y = 298.009, z = 0.000 }, level = 26, chest_drop_id = 1050145, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 83002, gadget_id = 70350315, pos = { x = -5912.146, y = 165.591, z = -2649.047 }, rot = { x = 0.000, y = 30.199, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 83006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5908.396, y = 165.604, z = -2641.803 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1083003, name = "GADGET_STATE_CHANGE_83003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83003", action = "action_EVENT_GADGET_STATE_CHANGE_83003" },
	{ config_id = 1083005, name = "GADGET_STATE_CHANGE_83005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83005", action = "action_EVENT_GADGET_STATE_CHANGE_83005" },
	{ config_id = 1083006, name = "ENTER_REGION_83006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_83006", action = "action_EVENT_ENTER_REGION_83006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "battle", value = 0, no_refresh = true }
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
		monsters = { 83004 },
		gadgets = { 83001, 83002 },
		regions = { 83006 },
		triggers = { "GADGET_STATE_CHANGE_83003", "GADGET_STATE_CHANGE_83005", "ENTER_REGION_83006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83003(context, evt)
	if 83001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83003(context, evt)
	-- 将本组内变量名为 "battle" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {83004}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133223083中,configid为：83004的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 83004, 133223083) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83005(context, evt)
	if 83002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83005(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133223504) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_83006(context, evt)
	if evt.param1 ~= 83006 then return false end
	
	-- 判断变量"battle"为1
	if ScriptLib.GetGroupVariableValue(context, "battle") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_83006(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {83004}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133223083中,configid为：83004的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 83004, 133223083) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end