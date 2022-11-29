-- 基础信息
local base_info = {
	group_id = 220019002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20010601, pos = { x = 3.089, y = 13.529, z = 40.959 }, rot = { x = 0.000, y = 32.624, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 2002, monster_id = 20010701, pos = { x = 11.473, y = 13.576, z = 41.634 }, rot = { x = 0.000, y = 353.593, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 2003, monster_id = 20010901, pos = { x = 18.111, y = 13.518, z = 37.991 }, rot = { x = 0.000, y = 339.936, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 2004, monster_id = 22010301, pos = { x = 28.237, y = 13.452, z = 48.351 }, rot = { x = 0.000, y = 269.972, z = 0.000 }, level = 1, affix = { 1008, 1011 }, isElite = true, special_name_id = 10003 },
	{ config_id = 2005, monster_id = 20010601, pos = { x = 13.728, y = 13.250, z = 48.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 20010701, pos = { x = 9.010, y = 13.250, z = 48.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 20010801, pos = { x = 22.954, y = 13.059, z = 39.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 20010801, pos = { x = 18.323, y = 13.059, z = 39.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 20010801, pos = { x = 18.713, y = 13.059, z = 42.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 20010501, pos = { x = 5.249, y = 13.059, z = 41.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, monster_id = 20010501, pos = { x = 1.212, y = 13.059, z = 41.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, monster_id = 20010501, pos = { x = 4.987, y = 13.059, z = 43.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2013, gadget_id = 70310001, pos = { x = 11.487, y = 13.350, z = 48.645 }, rot = { x = 0.000, y = 106.910, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 18, shape = RegionShape.SPHERE, radius = 10.3, pos = { x = 11.500, y = 13.350, z = 49.119 } }
}

-- 触发器
triggers = {
	{ config_id = 1000018, name = "ENTER_REGION_18", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18", action = "action_EVENT_ENTER_REGION_18", forbid_guest = false },
	{ config_id = 1000019, name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19" },
	{ config_id = 1000020, name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" },
	{ config_id = 1000021, name = "ANY_MONSTER_DIE_21", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21", action = "action_EVENT_ANY_MONSTER_DIE_21" },
	{ config_id = 1000022, name = "ANY_MONSTER_DIE_22", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22", action = "action_EVENT_ANY_MONSTER_DIE_22" },
	{ config_id = 1000023, name = "ANY_MONSTER_DIE_23", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23", action = "action_EVENT_ANY_MONSTER_DIE_23" },
	{ config_id = 1000024, name = "SPECIFIC_MONSTER_HP_CHANGE_24", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "2004", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_24", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_24" },
	{ config_id = 1000051, name = "SPECIFIC_MONSTER_HP_CHANGE_51", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "2004", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51" },
	{ config_id = 1000057, name = "ANY_MONSTER_DIE_57", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57", action = "action_EVENT_ANY_MONSTER_DIE_57" },
	{ config_id = 1000058, name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58" },
	{ config_id = 1000059, name = "ANY_MONSTER_DIE_59", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59", action = "action_EVENT_ANY_MONSTER_DIE_59" },
	{ config_id = 1000061, name = "VARIABLE_CHANGE_61", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_61", action = "action_EVENT_VARIABLE_CHANGE_61" },
	{ config_id = 1000062, name = "VARIABLE_CHANGE_62", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62", action = "action_EVENT_VARIABLE_CHANGE_62" },
	{ config_id = 1000064, name = "ANY_MONSTER_DIE_64", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64", action = "action_EVENT_ANY_MONSTER_DIE_64" },
	{ config_id = 1000065, name = "ANY_MONSTER_DIE_65", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65", action = "action_EVENT_ANY_MONSTER_DIE_65" },
	{ config_id = 1000066, name = "ANY_MONSTER_DIE_66", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66", action = "action_EVENT_ANY_MONSTER_DIE_66" },
	{ config_id = 1000067, name = "VARIABLE_CHANGE_67", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_67", action = "action_EVENT_VARIABLE_CHANGE_67" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Boss", value = 0, no_refresh = false },
	{ config_id = 2, name = "Badass_Lighting", value = 0, no_refresh = false },
	{ config_id = 3, name = "Badass_Ice", value = 0, no_refresh = false },
	{ config_id = 4, name = "Badass_Lighting2", value = 0, no_refresh = false },
	{ config_id = 5, name = "Badass_Ice2", value = 0, no_refresh = false }
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
		monsters = { 2007, 2008, 2009, 2010, 2011, 2012 },
		gadgets = { 2013 },
		regions = { 18 },
		triggers = { "ENTER_REGION_18", "ANY_MONSTER_DIE_19", "ANY_MONSTER_DIE_20", "ANY_MONSTER_DIE_21", "ANY_MONSTER_DIE_22", "ANY_MONSTER_DIE_23", "SPECIFIC_MONSTER_HP_CHANGE_24", "SPECIFIC_MONSTER_HP_CHANGE_51", "ANY_MONSTER_DIE_57", "ANY_MONSTER_DIE_58", "ANY_MONSTER_DIE_59", "VARIABLE_CHANGE_61", "VARIABLE_CHANGE_62", "ANY_MONSTER_DIE_64", "ANY_MONSTER_DIE_65", "ANY_MONSTER_DIE_66", "VARIABLE_CHANGE_67" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_18(context, evt)
	if evt.param1 ~= 18 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18(context, evt)
	-- 通知groupid为220019002中,configid为：67的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 67, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2007, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2008, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2009的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2009, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2010的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2010, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2011的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2011, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2012的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2012, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：74的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 74, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 改变指定group组220019005中， configid为27的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220019005, 27, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2004的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2004, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（26，17，48），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=26, y=17, z=48}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22(context, evt)
	if 2003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23(context, evt)
	if 2004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "DLK_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220019002, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_24(context, evt)
	--[[判断指定configid的怪物的血量小于%66时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 66 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_24(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2005的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2005, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51(context, evt)
	--[[判断指定configid的怪物的血量小于%33时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 33 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_51(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2006, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57(context, evt)
	if 2010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57(context, evt)
	-- 针对当前group内变量名为 "Badass_Lighting" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Badass_Lighting2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	if 2011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 针对当前group内变量名为 "Badass_Lighting" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Badass_Lighting2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59(context, evt)
	if 2012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 针对当前group内变量名为 "Badass_Lighting" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Badass_Lighting2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_61(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Badass_Lighting"为2
	if ScriptLib.GetGroupVariableValue(context, "Badass_Lighting") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_61(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2001, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Badass_Lighting2"为6
	if ScriptLib.GetGroupVariableValue(context, "Badass_Lighting2") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2002, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2002, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_64(context, evt)
	if 2007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_64(context, evt)
	-- 针对当前group内变量名为 "Badass_Ice" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Badass_Lighting2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65(context, evt)
	if 2008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65(context, evt)
	-- 针对当前group内变量名为 "Badass_Ice" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Badass_Lighting2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66(context, evt)
	if 2009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66(context, evt)
	-- 针对当前group内变量名为 "Badass_Ice" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Badass_Lighting2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_67(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Badass_Ice"为2
	if ScriptLib.GetGroupVariableValue(context, "Badass_Ice") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_67(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知groupid为220019002中,configid为：2003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2003, 220019002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end