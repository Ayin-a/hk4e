-- 基础信息
local base_info = {
	group_id = 201056002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2008, monster_id = 21011201, pos = { x = 47.162, y = 3.276, z = 94.149 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 2010, monster_id = 23020101, pos = { x = -4.909, y = 3.525, z = 101.085 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6105 }, isElite = true, title_id = 10002, special_name_id = 10017 },
	{ config_id = 2011, monster_id = 21011201, pos = { x = 51.575, y = 3.276, z = 94.165 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 2013, monster_id = 21010502, pos = { x = 46.796, y = 3.272, z = 98.074 }, rot = { x = 0.000, y = 148.267, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 2014, monster_id = 21030401, pos = { x = 51.548, y = 3.253, z = 97.693 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2003, gadget_id = 70350005, pos = { x = 9.067, y = 3.115, z = 96.881 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70360006, pos = { x = 16.567, y = 3.263, z = 93.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70360006, pos = { x = 16.559, y = 3.303, z = 99.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70350005, pos = { x = -13.784, y = 3.137, z = 96.850 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70211001, pos = { x = -4.331, y = 3.652, z = 82.505 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true },
	{ config_id = 2015, gadget_id = 70710183, pos = { x = -2.374, y = 3.846, z = 106.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70710178, pos = { x = -2.374, y = 5.200, z = 106.073 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70710177, pos = { x = -2.374, y = 5.199, z = 106.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70300107, pos = { x = 49.382, y = 3.262, z = 96.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2020, gadget_id = 70900201, pos = { x = -2.374, y = 6.015, z = 106.073 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70900201, pos = { x = -48.990, y = 0.785, z = 48.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2002, shape = RegionShape.CUBIC, size = { x = 12.000, y = 10.000, z = 5.000 }, pos = { x = 50.204, y = -1.730, z = 74.701 } }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "QUEST_FINISH_2001", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2001", action = "action_EVENT_QUEST_FINISH_2001" },
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2002", action = "action_EVENT_ENTER_REGION_2002" },
	{ config_id = 1002006, name = "GADGET_STATE_CHANGE_2006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2006", action = "action_EVENT_GADGET_STATE_CHANGE_2006" },
	{ config_id = 1002012, name = "ANY_MONSTER_DIE_2012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2012", action = "action_EVENT_ANY_MONSTER_DIE_2012" },
	{ config_id = 1002016, name = "QUEST_FINISH_2016", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2016", action = "action_EVENT_QUEST_FINISH_2016" },
	{ config_id = 1002023, name = "ANY_MONSTER_DIE_2023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2023", action = "action_EVENT_ANY_MONSTER_DIE_2023" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gravity_check", value = 0, no_refresh = false }
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
		gadgets = { 2003, 2004, 2005, 2007, 2009, 2015, 2017, 2018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2006", "QUEST_FINISH_2016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2010 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_2001", "ANY_MONSTER_DIE_2012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2008, 2011, 2013, 2014 },
		gadgets = { 2019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_2001(context, evt)
	--检查ID为1102307的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1102307 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2001(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201056002, monsters = {}, gadgets = {2018} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为2024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 2007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组201056002中， configid为2003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201056002, 2003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2002(context, evt)
	if evt.param1 ~= 2002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	-- 改变指定group组201056002中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201056002, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2006(context, evt)
	
	-- 判断变量"gravity_count"为1
	if ScriptLib.GetGroupVariableValue(context, "gravity_check") ~= 1 then
			return false
		end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201056002, 2004) then
			return false
	
		end 
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 201056002, 2005) then
			return false
	
		end 
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2006(context, evt)
	-- 改变指定group组201056002中， configid为2003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201056002, 2003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201056001, monsters = {}, gadgets = {1008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为2020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	--判断死亡怪物的configid是否为 2010
	if evt.param1 ~= 2010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1102306") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2016(context, evt)
	--检查ID为1102305的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1102305 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201056002, 2)
	
	-- 将configid为 2003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201056002, monsters = {}, gadgets = {2020} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2023(context, evt)
	-- 将本组内变量名为 "gravity_check" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gravity_check", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为0的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end