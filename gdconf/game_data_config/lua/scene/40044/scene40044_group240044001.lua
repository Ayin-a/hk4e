-- 基础信息
local base_info = {
	group_id = 240044001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 25100101, pos = { x = -158.868, y = 0.323, z = -66.937 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1008, 1009 }, pose_id = 1002 },
	{ config_id = 1002, monster_id = 25100201, pos = { x = -166.902, y = 0.436, z = -66.957 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1008, 1009, 6105 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1004, gadget_id = 70211021, pos = { x = -155.219, y = 0.408, z = -66.710 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true },
	{ config_id = 1006, gadget_id = 70290137, pos = { x = -138.404, y = 1.544, z = -66.401 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1013, gadget_id = 70220070, pos = { x = -129.474, y = 1.337, z = -69.711 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220071, pos = { x = -130.560, y = 1.337, z = -67.777 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70220071, pos = { x = -123.305, y = 1.337, z = -64.102 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -143.779, y = 3.381, z = -66.058 } },
	{ config_id = 1008, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -143.137, y = 0.423, z = -66.058 } },
	{ config_id = 1012, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -143.779, y = 3.381, z = -66.058 } },
	{ config_id = 1016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -143.137, y = 0.423, z = -66.058 } },
	{ config_id = 1017, shape = RegionShape.SPHERE, radius = 5, pos = { x = -124.399, y = 3.627, z = -66.410 } }
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "SPECIFIC_MONSTER_HP_CHANGE_1003", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1003", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1003" },
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" },
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" },
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1008", action = "action_EVENT_ENTER_REGION_1008" },
	{ config_id = 1001009, name = "CHALLENGE_SUCCESS_1009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1009" },
	{ config_id = 1001010, name = "CHALLENGE_FAIL_1010", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1010" },
	{ config_id = 1001011, name = "MONSTER_BATTLE_1011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_1011", action = "action_EVENT_MONSTER_BATTLE_1011" },
	{ config_id = 1001012, name = "ENTER_REGION_1012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1012", action = "action_EVENT_ENTER_REGION_1012" },
	{ config_id = 1001016, name = "ENTER_REGION_1016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1016", action = "action_EVENT_ENTER_REGION_1016" },
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "battle", value = 0, no_refresh = false }
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
		monsters = { 1001 },
		gadgets = { 1006, 1013, 1014, 1015 },
		regions = { 1007, 1012, 1017 },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_1003", "ANY_MONSTER_DIE_1005", "ENTER_REGION_1007", "CHALLENGE_SUCCESS_1009", "CHALLENGE_FAIL_1010", "MONSTER_BATTLE_1011", "ENTER_REGION_1012", "ENTER_REGION_1017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1004 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1003(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240044001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 创建id为1004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240044004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1008(context, evt)
	if evt.param1 ~= 1008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"battle"为1
	if ScriptLib.GetGroupVariableValue(context, "battle") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1008(context, evt)
	-- 改变指定group组240044001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044001, 1006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240044001, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240044001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_1011(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_1011(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 240044001, 2, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "battle" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1012(context, evt)
	if evt.param1 ~= 1012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"battle"为0
	if ScriptLib.GetGroupVariableValue(context, "battle") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1012(context, evt)
	-- 改变指定group组240044001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044001, 1006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1016(context, evt)
	if evt.param1 ~= 1016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"battle"为1
	if ScriptLib.GetGroupVariableValue(context, "battle") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1016(context, evt)
	-- 改变指定group组240044001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044001, 1006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end