-- 基础信息
local base_info = {
	group_id = 133225081
}

-- DEFS_MISCS
local defs = {
	BossConfigID = 81001,
	regionID = 81006,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 20070101, pos = { x = -6345.258, y = 205.962, z = -2707.524 }, rot = { x = 0.000, y = 51.599, z = 0.000 }, level = 31, drop_id = 1000100, affix = { 5125 }, special_name_id = 10076, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81003, gadget_id = 42007013, pos = { x = -6344.653, y = 201.262, z = -2707.125 }, rot = { x = 0.000, y = 357.740, z = 0.000 }, level = 30, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 81006, shape = RegionShape.SPHERE, radius = 45, pos = { x = -6337.170, y = 205.976, z = -2702.869 }, area_id = 18 },
	{ config_id = 81007, shape = RegionShape.SPHERE, radius = 60, pos = { x = -6327.314, y = 205.976, z = -2699.448 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1081002, name = "ANY_MONSTER_LIVE_81002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_81002" },
	{ config_id = 1081004, name = "MONSTER_BATTLE_81004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_81004", action = "action_EVENT_MONSTER_BATTLE_81004", trigger_count = 0 },
	{ config_id = 1081005, name = "ANY_MONSTER_DIE_81005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81005", action = "action_EVENT_ANY_MONSTER_DIE_81005" },
	{ config_id = 1081006, name = "ENTER_REGION_81006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_81006", action = "action_EVENT_ENTER_REGION_81006", trigger_count = 0, forbid_guest = false },
	{ config_id = 1081007, name = "LEAVE_REGION_81007", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_81007", action = "action_EVENT_LEAVE_REGION_81007", trigger_count = 0, forbid_guest = false }
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
		monsters = { 81001 },
		gadgets = { },
		regions = { 81006, 81007 },
		triggers = { "ANY_MONSTER_LIVE_81002", "MONSTER_BATTLE_81004", "ANY_MONSTER_DIE_81005", "ENTER_REGION_81006", "LEAVE_REGION_81007" },
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
		gadgets = { 81003 },
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
function action_EVENT_ANY_MONSTER_LIVE_81002(context, evt)
	-- 通知groupid为133225081中,configid为：81001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 81001, 133225081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_81004(context, evt)
	if 81001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_81004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225081, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81005(context, evt)
	if 81001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7217310_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225081, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81006(context, evt)
	if evt.param1 ~= 181005 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81006(context, evt)
	     	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==81006 then
					small_region=regions[i]
				end
				if regions[i].config_id==81007 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_81007(context, evt)
	if evt.param1 ~= 181006 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_81007(context, evt)
	     	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 81006)
		end
	
	return 0
end

require "TD_Lib"
require "V2_1/Boss_Raijin"