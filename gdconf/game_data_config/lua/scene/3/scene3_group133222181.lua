-- 基础信息
local base_info = {
	group_id = 133222181
}

-- DEFS_MISCS
local defs = {
	BossConfigID = 181001,
	regionID = 181005,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 20070101, pos = { x = -4707.957, y = 479.992, z = -4259.036 }, rot = { x = 0.000, y = 336.573, z = 0.000 }, level = 36, drop_id = 1000100, special_name_id = 10071, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 181002, gadget_id = 70210106, pos = { x = -4707.962, y = 480.009, z = -4258.291 }, rot = { x = 0.000, y = 338.343, z = 0.000 }, level = 26, drop_tag = "雷音权现", showcutscene = true, persistent = true, boss_chest = {monster_config_id=181001, resin=40, life_time=600, take_num=100}, area_id = 14 },
	{ config_id = 181007, gadget_id = 42007013, pos = { x = -4707.352, y = 480.348, z = -4258.637 }, rot = { x = 0.000, y = 357.740, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 181005, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4709.458, y = 480.006, z = -4259.839 }, area_id = 14 },
	{ config_id = 181006, shape = RegionShape.SPHERE, radius = 50, pos = { x = -4709.458, y = 480.006, z = -4259.839 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1181003, name = "MONSTER_BATTLE_181003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_181003", action = "action_EVENT_MONSTER_BATTLE_181003", trigger_count = 0 },
	{ config_id = 1181004, name = "ANY_MONSTER_DIE_181004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_181004", action = "action_EVENT_ANY_MONSTER_DIE_181004" },
	{ config_id = 1181005, name = "ENTER_REGION_181005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_181005", action = "action_EVENT_ENTER_REGION_181005", trigger_count = 0, forbid_guest = false },
	{ config_id = 1181006, name = "LEAVE_REGION_181006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_181006", action = "action_EVENT_LEAVE_REGION_181006", trigger_count = 0, forbid_guest = false },
	{ config_id = 1181008, name = "GROUP_LOAD_181008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_181008", action = "action_EVENT_GROUP_LOAD_181008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Quest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 181001 },
		gadgets = { },
		regions = { 181005, 181006 },
		triggers = { "MONSTER_BATTLE_181003", "ANY_MONSTER_DIE_181004", "ENTER_REGION_181005", "LEAVE_REGION_181006", "GROUP_LOAD_181008" },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 181007 },
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
function condition_EVENT_MONSTER_BATTLE_181003(context, evt)
	if 181001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_181003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222181, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_181004(context, evt)
	if 181001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_181004(context, evt)
	-- 创建id为181002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 181002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215803") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222181, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_181005(context, evt)
	if evt.param1 ~= 181005 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181005(context, evt)
	     	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==181005 then
					small_region=regions[i]
				end
				if regions[i].config_id==181006 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_181006(context, evt)
	if evt.param1 ~= 181006 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_181006(context, evt)
	     	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 181005)
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_181008(context, evt)
	-- 判断变量"Quest"为1
	if ScriptLib.GetGroupVariableValue(context, "Quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_181008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215803") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "TD_Lib"
require "V2_1/Boss_Raijin"