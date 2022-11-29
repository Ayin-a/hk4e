-- 基础信息
local base_info = {
	group_id = 133104053
}

-- Trigger变量
local defs = {
	ClueFire = 108,
	ClueWater = 109,
	ClueWind = 110,
	ClueThunder = 111,
	WaterSwitch = 116,
	Gurdian2 = 53010,
	Gurdian1 = 53012,
	Gurdian3 = 53009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53009, monster_id = 24010101, pos = { x = 455.100, y = 196.800, z = 225.100 }, rot = { x = 0.000, y = 42.514, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 100, area_id = 9 },
	{ config_id = 53010, monster_id = 24010101, pos = { x = 433.280, y = 197.144, z = 257.720 }, rot = { x = 0.000, y = 119.156, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 100, area_id = 9 },
	{ config_id = 53012, monster_id = 24010101, pos = { x = 422.710, y = 196.779, z = 224.140 }, rot = { x = 0.000, y = 53.900, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 108, gadget_id = 70360028, pos = { x = 308.375, y = 227.095, z = 452.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 109, gadget_id = 70360028, pos = { x = 490.739, y = 207.593, z = 143.383 }, rot = { x = 1.277, y = 0.005, z = 0.404 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 110, gadget_id = 70360028, pos = { x = 686.775, y = 213.432, z = 399.425 }, rot = { x = 359.606, y = 0.002, z = 359.292 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 111, gadget_id = 70360028, pos = { x = 185.730, y = 246.948, z = 76.587 }, rot = { x = 0.393, y = 359.531, z = 358.720 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 116, gadget_id = 70360028, pos = { x = 467.388, y = 199.379, z = 236.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 142, gadget_id = 70380010, pos = { x = 437.880, y = 195.931, z = 236.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, route_id = 310400029, start_route = false, persistent = true, area_id = 9 },
	{ config_id = 639, gadget_id = 70211032, pos = { x = 433.915, y = 185.107, z = 237.997 }, rot = { x = 0.000, y = 107.877, z = 0.000 }, level = 16, chest_drop_id = 2000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 640, gadget_id = 70211122, pos = { x = 444.095, y = 185.107, z = 231.173 }, rot = { x = 0.000, y = 325.298, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 641, gadget_id = 70211122, pos = { x = 443.499, y = 185.107, z = 241.126 }, rot = { x = 0.000, y = 211.776, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 53019, gadget_id = 70310007, pos = { x = 433.280, y = 197.144, z = 257.720 }, rot = { x = 0.000, y = 132.814, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 53020, gadget_id = 70310007, pos = { x = 422.710, y = 196.779, z = 224.140 }, rot = { x = 0.000, y = 53.900, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 53021, gadget_id = 70310007, pos = { x = 455.100, y = 196.800, z = 225.100 }, rot = { x = 0.000, y = 323.280, z = 0.000 }, level = 19, persistent = true, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 80, shape = RegionShape.SPHERE, radius = 11, pos = { x = 438.766, y = 197.213, z = 235.964 }, area_id = 9 },
	{ config_id = 53007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 467.430, y = 200.055, z = 237.257 }, area_id = 9 },
	{ config_id = 53011, shape = RegionShape.SPHERE, radius = 10, pos = { x = 686.719, y = 212.857, z = 399.641 }, area_id = 9 },
	{ config_id = 53014, shape = RegionShape.SPHERE, radius = 10, pos = { x = 308.521, y = 226.738, z = 452.229 }, area_id = 9 },
	{ config_id = 53017, shape = RegionShape.SPHERE, radius = 10, pos = { x = 185.686, y = 246.588, z = 76.721 }, area_id = 9 },
	{ config_id = 53018, shape = RegionShape.SPHERE, radius = 10, pos = { x = 489.755, y = 208.278, z = 142.996 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000079, name = "VARIABLE_CHANGE_79", event = EventType.EVENT_VARIABLE_CHANGE, source = "findAllClue", condition = "condition_EVENT_VARIABLE_CHANGE_79", action = "action_EVENT_VARIABLE_CHANGE_79" },
	{ config_id = 1000080, name = "ENTER_REGION_80", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80", action = "action_EVENT_ENTER_REGION_80" },
	{ config_id = 1000081, name = "GADGET_STATE_CHANGE_81", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81", action = "action_EVENT_GADGET_STATE_CHANGE_81" },
	{ config_id = 1000302, name = "GADGET_STATE_CHANGE_302", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302", action = "action_EVENT_GADGET_STATE_CHANGE_302" },
	{ config_id = 1000303, name = "QUEST_FINISH_303", event = EventType.EVENT_QUEST_FINISH, source = "2100450", condition = "", action = "action_EVENT_QUEST_FINISH_303" },
	{ config_id = 1053001, name = "QUEST_START_53001", event = EventType.EVENT_QUEST_START, source = "2100403", condition = "", action = "action_EVENT_QUEST_START_53001" },
	{ config_id = 1053002, name = "GADGET_CREATE_53002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53002", action = "action_EVENT_GADGET_CREATE_53002", trigger_count = 0 },
	{ config_id = 1053003, name = "SELECT_OPTION_53003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_53003", action = "action_EVENT_SELECT_OPTION_53003", trigger_count = 0 },
	{ config_id = 1053004, name = "VARIABLE_CHANGE_53004", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "", action = "action_EVENT_VARIABLE_CHANGE_53004", trigger_count = 0 },
	{ config_id = 1053005, name = "TIMER_EVENT_53005", event = EventType.EVENT_TIMER_EVENT, source = "playerReminder", condition = "", action = "action_EVENT_TIMER_EVENT_53005", trigger_count = 0 },
	{ config_id = 1053006, name = "QUEST_FINISH_53006", event = EventType.EVENT_QUEST_FINISH, source = "2100420", condition = "", action = "action_EVENT_QUEST_FINISH_53006" },
	{ config_id = 1053007, name = "ENTER_REGION_53007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_53007", action = "action_EVENT_ENTER_REGION_53007" },
	{ config_id = 1053008, name = "QUEST_START_53008", event = EventType.EVENT_QUEST_START, source = "2100420", condition = "", action = "action_EVENT_QUEST_START_53008" },
	{ config_id = 1053011, name = "ENTER_REGION_53011", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_53011", action = "action_EVENT_ENTER_REGION_53011" },
	{ config_id = 1053013, name = "ANY_MONSTER_DIE_53013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53013", action = "action_EVENT_ANY_MONSTER_DIE_53013" },
	{ config_id = 1053014, name = "ENTER_REGION_53014", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_53014", action = "action_EVENT_ENTER_REGION_53014" },
	{ config_id = 1053015, name = "SELECT_OPTION_53015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_53015", action = "action_EVENT_SELECT_OPTION_53015", trigger_count = 0 },
	{ config_id = 1053016, name = "GADGET_CREATE_53016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53016", action = "action_EVENT_GADGET_CREATE_53016", trigger_count = 0 },
	{ config_id = 1053017, name = "ENTER_REGION_53017", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_53017", action = "action_EVENT_ENTER_REGION_53017" },
	{ config_id = 1053018, name = "ENTER_REGION_53018", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_53018", action = "action_EVENT_ENTER_REGION_53018" },
	{ config_id = 1053022, name = "TIMER_EVENT_53022", event = EventType.EVENT_TIMER_EVENT, source = "ActiveGurdian", condition = "", action = "action_EVENT_TIMER_EVENT_53022" },
	{ config_id = 1053023, name = "TIMER_EVENT_53023", event = EventType.EVENT_TIMER_EVENT, source = "SetMonsterBattle", condition = "", action = "action_EVENT_TIMER_EVENT_53023" },
	{ config_id = 1053024, name = "TIMER_EVENT_53024", event = EventType.EVENT_TIMER_EVENT, source = "DisableFakeGurdian", condition = "", action = "action_EVENT_TIMER_EVENT_53024" },
	{ config_id = 1053025, name = "QUEST_FINISH_53025", event = EventType.EVENT_QUEST_FINISH, source = "2100481", condition = "condition_EVENT_QUEST_FINISH_53025", action = "action_EVENT_QUEST_FINISH_53025", trigger_count = 0 },
	{ config_id = 1053026, name = "GADGET_CREATE_53026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53026", action = "action_EVENT_GADGET_CREATE_53026", trigger_count = 0 },
	{ config_id = 1053027, name = "ANY_MONSTER_DIE_53027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53027", action = "action_EVENT_ANY_MONSTER_DIE_53027", trigger_count = 0 },
	{ config_id = 1053028, name = "QUEST_START_53028", event = EventType.EVENT_QUEST_START, source = "2100414", condition = "", action = "action_EVENT_QUEST_START_53028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "DefeatGurdian", value = 0, no_refresh = true },
	{ config_id = 3, name = "isAcceptQuest", value = 0, no_refresh = true },
	{ config_id = 4, name = "noQuestCount", value = 0, no_refresh = true },
	{ config_id = 5, name = "findAllClue", value = 0, no_refresh = true },
	{ config_id = 6, name = "ActiveGurdian", value = 0, no_refresh = true },
	{ config_id = 7, name = "findAllClueAndFinishTalk", value = 0, no_refresh = true },
	{ config_id = 8, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 9, name = "Region_Fire", value = 0, no_refresh = true },
	{ config_id = 10, name = "Region_Wind", value = 0, no_refresh = true },
	{ config_id = 11, name = "Region_Water", value = 0, no_refresh = true },
	{ config_id = 12, name = "Region_Thunder", value = 0, no_refresh = true },
	{ config_id = 13, name = "Region_Center", value = 0, no_refresh = true },
	{ config_id = 14, name = "TurnOffTrigger", value = 99, no_refresh = true },
	{ config_id = 15, name = "Temp_GadgetID", value = 0, no_refresh = true },
	{ config_id = 16, name = "Unlock_Water", value = 0, no_refresh = true },
	{ config_id = 17, name = "AnyGurdianDie", value = 0, no_refresh = true }
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
		gadgets = { 108, 109, 110, 111, 116, 142, 53019, 53020, 53021 },
		regions = { },
		triggers = { "QUEST_START_53001", "SELECT_OPTION_53015", "GADGET_CREATE_53016", "QUEST_FINISH_53025", "QUEST_START_53028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 108, 109, 110, 111, 116, 142, 53019, 53020, 53021 },
		regions = { 80, 53007 },
		triggers = { "VARIABLE_CHANGE_79", "ENTER_REGION_80", "GADGET_STATE_CHANGE_81", "GADGET_STATE_CHANGE_302", "QUEST_FINISH_303", "QUEST_START_53001", "GADGET_CREATE_53002", "SELECT_OPTION_53003", "VARIABLE_CHANGE_53004", "TIMER_EVENT_53005", "QUEST_FINISH_53006", "ENTER_REGION_53007", "QUEST_START_53008", "ANY_MONSTER_DIE_53013", "TIMER_EVENT_53022", "TIMER_EVENT_53023", "TIMER_EVENT_53024", "QUEST_FINISH_53025", "GADGET_CREATE_53026", "ANY_MONSTER_DIE_53027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 53009, 53010, 53012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 53019, 53020, 53021 },
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
function condition_EVENT_VARIABLE_CHANGE_79(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"findAllClue"为1
	if ScriptLib.GetGroupVariableValue(context, "findAllClue") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79(context, evt)
	-- 创建id为639的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 639 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为640的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 640 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为641的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 641 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 116, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_80(context, evt)
	if evt.param1 ~= 80 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	-- 判断变量"findAllClue"为1
	if ScriptLib.GetGroupVariableValue(context, "findAllClue") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "ActiveGurdian") == 0 then
			ScriptLib.AddQuestProgress(context, "find_secret")
			ScriptLib.ShowReminder(context, 31040141)
		end
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81(context, evt)
	if 116 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81(context, evt)
	-- 将本组内变量名为 "Unlock_Water" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Unlock_Water", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "unlock_dungeon") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 640 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 640, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 639 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 641 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 641, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为310405301 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310405301, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 调用提示id为 31040160 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040160) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_302(context, evt)
	if 639 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302(context, evt)
	-- 调用提示id为 31040170 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "get_reward") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5001, 3, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_303(context, evt)
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_53001(context, evt)
							-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 1
						if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1) then
						  return -1
						end
					
						ScriptLib.MarkPlayerAction(context, 5001, 1, 1)
						--刷新到GroupSuite2
						ScriptLib.RefreshGroup(context,{group_id = 133104053, suite = 2})
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueFire, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueWind, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueWater, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueThunder, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.WaterSwitch, 171)
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueFire, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueWind, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueWater, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueThunder, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.WaterSwitch, {171})
	
						return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53002(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53002(context, evt)
				-- 设置操作台选项
		-- 如果机关没有开启添加开启按钮，如果已经开启则添加调查按钮
			--如果是4个线索的其中一个则给他们添加按钮
		if defs.ClueFire == evt.param1 or defs.ClueWind == evt.param1 or defs.ClueWater == evt.param1 or defs.ClueThunder == evt.param1 then
			if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
				ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {7})
			elseif GadgetState.GearStart == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
				ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
			end
		end
		--如果创生的Gadget是WaterSwitch的话
		if defs.WaterSwitch == evt.param1 then
				--如果已经激活了守卫
			if 1 == ScriptLib.GetGroupVariableValue(context, "ActiveGurdian") then
				--查看是否已经击败了守卫，给机关添加Option171
				if 1 == ScriptLib.GetGroupVariableValue(context,"DefeatGurdian") then
					if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {7})
					end
					--如果没有击败守卫，
				elseif 0 == ScriptLib.GetGroupVariableValue(context,"DefeatGurdian") then 
					ScriptLib.SetGadgetStateByConfigId(context, evt.param1,GadgetState.GearStop)
					ScriptLib.AddExtraGroupSuite(context, 133104053, 3)
		
				end
			--如果没有激活守卫		
			elseif 0 == ScriptLib.GetGroupVariableValue(context, "ActiveGurdian") then
				ScriptLib.RemoveExtraGroupSuite(context, 133104053, 3)
				--查看是否找到了所有线索，给机关添加Option171
				ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
				if 1 == ScriptLib.GetGroupVariableValue(context,"findAllClue") and GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
					ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
				end
			end
		end
	
		if 1 == ScriptLib.GetGroupVariableValue(context,"AnyGurdianDie") then
			ScriptLib.AddQuestProgress(context,"any_gurdian_die")
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_53003(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_53003(context, evt)
		if defs.ClueFire == evt.param1 or defs.ClueWind == evt.param1 or defs.ClueWater == evt.param1 or defs.ClueThunder == evt.param1 then
							--如果选择了启动按钮7，则会在启动后删除自身，并且添加调查171按钮
							if 7 == evt.param2 and ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
									--第一次开启雷机关
								if defs.ClueThunder == evt.param1 then
									ScriptLib.ShowReminder(context, 31040104)
									ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
									ScriptLib.ChangeGroupVariableValue(context, "count", 1)
									ScriptLib.AddQuestProgress(context, "133104053_progress1")
									ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
									ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 7)
									
									--第一次开启火机关
								elseif defs.ClueFire == evt.param1 then
									ScriptLib.ShowReminder(context, 31040103)
									ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
									ScriptLib.ChangeGroupVariableValue(context, "count", 1)
									ScriptLib.AddQuestProgress(context, "133104053_progress2")
									ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
									ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 7)
					
									--第一次开启风机关
								elseif defs.ClueWind == evt.param1 then
									ScriptLib.ShowReminder(context, 31040101)
									ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
									ScriptLib.ChangeGroupVariableValue(context, "count", 1)
									ScriptLib.AddQuestProgress(context, "133104053_progress3")
									ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
									ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 7)
					
									--第一次开启水机关
								elseif defs.ClueWater == evt.param1 then
									ScriptLib.ShowReminder(context, 31040102)
									ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
									ScriptLib.ChangeGroupVariableValue(context, "count", 1)
									ScriptLib.AddQuestProgress(context, "133104053_progress4")
									ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, evt.param1, {171})
									ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 7)
					
								end
							end
							--如果选择了调查按钮171，则会反复触发 reminder
							if 171 == evt.param2 then
								--反复调查雷机关
								if defs.ClueThunder == evt.param1 then
									ScriptLib.ShowReminder(context, 31040104)
									--反复调查火机关
								elseif defs.ClueFire == evt.param1 then
										ScriptLib.ShowReminder(context, 31040103)
									--反复调查风机关
								elseif defs.ClueWind == evt.param1 then
										ScriptLib.ShowReminder(context, 31040101)
									--反复调查水机关
								elseif defs.ClueWater == evt.param1 then
										ScriptLib.ShowReminder(context, 31040102)
								end
							end
						end
						--如果玩家开启了移动水面机关，则会开启遗迹守卫怪物的AI和血量，并且解锁无敌状态，和玩家战斗
						if defs.WaterSwitch == evt.param1 then
							if 171 == evt.param2 then
								if 0 == ScriptLib.GetGroupVariableValue(context, "findAllClue") then
									ScriptLib.ShowReminder(context, 31040202)
								else 
									if 0 == ScriptLib.GetGroupVariableValue(context,"ActiveGurdian") then
										ScriptLib.SetGroupVariableValue(context, "ActiveGurdian", 1)
										ScriptLib.AddQuestProgress(context, "active_gurdian")
										ScriptLib.SetGadgetStateByConfigId(context, evt.param1,GadgetState.GearStop)
										ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
										ScriptLib.AddQuestProgress(context, "find_secret")
										-- 开启或者关闭groupid为133104053中,configid为：53012的怪物的ai，set为1是开启，为0是关闭
										--ScriptLib.SetMonsterAIByGroup(context, 1, defs.GurdianPowerOff, 133104053)
										-- 通知groupid为133104053中,configid为：53012的怪物入战或者脱战，set为1是入战，为0是脱战
										
										--解锁configid 为 53012 的怪物的血量
										ScriptLib.CreateGroupTimerEvent(context, 133104053, "DisableFakeGurdian", 2)
										ScriptLib.CreateGroupTimerEvent(context, 133104053, "ActiveGurdian", 8)
										ScriptLib.PlayCutScene(context, 310405302, 0)
										--ScriptLib.AddExtraGroupSuite(context, 133104053, 3)
										--ScriptLib.RemoveExtraGroupSuite(context, 133104053, 5)
										--ScriptLib.SetMonsterBattleByGroup(context, 1, defs.Gurdian1, 133104053)
										--ScriptLib.SetMonsterBattleByGroup(context, 1, defs.Gurdian2, 133104053)
										--ScriptLib.SetMonsterBattleByGroup(context, 1, defs.Gurdian3, 133104053)
										
			
										ScriptLib.ShowReminder(context, 31040150)
									end
								end
	
							end
	
							if 7 == evt.param2 then
								--如果玩家是打败守卫之后开启了机关的话，
								if 1 == ScriptLib.GetGroupVariableValue(context,"DefeatGurdian") then
									ScriptLib.SetGadgetStateByConfigId(context, evt.param1,GadgetState.GearStart)
									ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 7)
									ScriptLib.MarkPlayerAction(context, 5001, 2, 2)
					
								end
					
							end
					
						end
							
							return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 延迟5秒后,向groupId为：133104053的对象,请求一次调用,并将string参数："playerReminder" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104053, "playerReminder", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_53005(context, evt)
					local loccount = ScriptLib.GetGroupVariableValue(context,"count")
					if loccount == 1 then
						ScriptLib.ShowReminder(context, 31040111)
					elseif loccount == 2 then
						ScriptLib.ShowReminder(context, 31040121)
					elseif loccount == 3 then
						ScriptLib.ShowReminder(context, 31040120)
					elseif loccount == 4 then
						ScriptLib.ShowReminder(context, 31040131)
					end
				
					ScriptLib.CancelGroupTimerEvent(context, 133104053, "playerReminder")
					return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_53006(context, evt)
	-- 将本组内变量名为 "findAllClueAndFinishTalk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "findAllClueAndFinishTalk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53007(context, evt)
	if evt.param1 ~= 53007 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	-- 判断变量"findAllClue"为1
	if ScriptLib.GetGroupVariableValue(context, "findAllClue") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53007(context, evt)
	--[[ 	if ScriptLib.GetGroupVariableValue(context,"isAcceptQuest") == 0 then
	
			if ScriptLib.GetGroupVariableValue(context,"Region_Center") == 0 then
				ScriptLib.SetGroupVariableValue(context, "Region_Center", 1)
				if ScriptLib.GetGroupVariableValue(context,"noQuestCount") < 5 then 
					ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
				end
			end
			local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
	
			if loccount == 1 then
				ScriptLib.ShowReminder(context, 31040190)
			elseif loccount == 2 then
				ScriptLib.ShowReminder(context, 31040195)
			elseif loccount == 3 then
				ScriptLib.ShowReminder(context, 31040204)
			elseif loccount == 4 then
				ScriptLib.ShowReminder(context, 31040205)
			elseif loccount == 5 then
				ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
				ScriptLib.ShowReminder(context, 31040206)
			elseif loccount == 6 then
				ScriptLib.ShowReminder(context, 31040201)				
			end
	
	
		elseif ScriptLib.GetGroupVariableValue(context,"isAcceptQuest") == 1 then
			ScriptLib.ShowReminder(context, 31040202)
		end
		return 0 ]]
		if ScriptLib.GetGroupVariableValue(context, "ActiveGurdian") == 0 then
			ScriptLib.AddQuestProgress(context, "find_secret")
			--ScriptLib.ShowReminder(context, 31040141)
		end
		return 0
end

-- 触发操作
function action_EVENT_QUEST_START_53008(context, evt)
	-- 将本组内变量名为 "findAllClue" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "findAllClue", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53011(context, evt)
	if evt.param1 ~= 53011 then return false end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53011(context, evt)
	--[[ 	if ScriptLib.GetGroupVariableValue(context,"Region_Wind") == 0 then
							ScriptLib.SetGroupVariableValue(context, "Region_Wind", 1)
							if ScriptLib.GetGroupVariableValue(context,"noQuestCount") < 5 then 
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							end
						end
						local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
						if loccount == 1 then
							ScriptLib.ShowReminder(context, 31040190)
						elseif loccount == 2 then
							ScriptLib.ShowReminder(context, 31040195)
						elseif loccount == 3 then
							ScriptLib.ShowReminder(context, 31040204)
						elseif loccount == 4 then
							ScriptLib.ShowReminder(context, 31040205)
						elseif loccount == 5 then
							ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							ScriptLib.ShowReminder(context, 31040206)
						elseif loccount == 6 then
							ScriptLib.ShowReminder(context, 31040201)				
						end
						 ]]
		ScriptLib.SetGroupVariableValue(context, "Region_Wind", 1)
		if count == 0 then
			ScriptLib.ShowReminder(context, 31040111)
		elseif count == 1 then
			ScriptLib.ShowReminder(context, 31040121)
		elseif count == 2 then
			ScriptLib.ShowReminder(context, 31040120)
		elseif count == 3 then
			ScriptLib.ShowReminder(context, 31040131)
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53013(context, evt)
	-- 将configid为 116 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 116, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "DefeatGurdian" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DefeatGurdian", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "defeat_gurdian") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53014(context, evt)
	if evt.param1 ~= 53014 then return false end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53014(context, evt)
	--[[ 					if ScriptLib.GetGroupVariableValue(context,"Region_Fire") == 0 then
							ScriptLib.SetGroupVariableValue(context, "Region_Fire", 1)
							if ScriptLib.GetGroupVariableValue(context,"noQuestCount") < 5 then 
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							end
						end
						local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
						
						if loccount == 1 then
							ScriptLib.ShowReminder(context, 31040190)
						elseif loccount == 2 then
							ScriptLib.ShowReminder(context, 31040195)
						elseif loccount == 3 then
							ScriptLib.ShowReminder(context, 31040204)
						elseif loccount == 4 then
							ScriptLib.ShowReminder(context, 31040205)
						elseif loccount == 5 then
							ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							ScriptLib.ShowReminder(context, 31040206)
						elseif loccount == 6 then
							ScriptLib.ShowReminder(context, 31040201)				
						end ]]
						ScriptLib.SetGroupVariableValue(context, "Region_Fire", 1)
						if count == 0 then
							ScriptLib.ShowReminder(context, 31040111)
						elseif count == 1 then
							ScriptLib.ShowReminder(context, 31040121)
						elseif count == 2 then
							ScriptLib.ShowReminder(context, 31040120)
						elseif count == 3 then
							ScriptLib.ShowReminder(context, 31040131)
						end
			
						return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_53015(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	-- 判断变量"isAcceptQuest"为0
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_53015(context, evt)
					if defs.ClueFire == evt.param1 or defs.ClueWind == evt.param1 or defs.ClueWater == evt.param1 or defs.ClueThunder == evt.param1 then
						--如果选择了启动按钮7，则会在启动后删除自身，并且添加调查171按钮
						if 171 == evt.param2 and ScriptLib.GetGadgetStateByConfigId(context, 133104053, evt.param1) then
								--第一次开启雷机关
							if defs.ClueThunder == evt.param1 then
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
								ScriptLib.AddQuestProgress(context, "whitout_quest")
								ScriptLib.SetGroupVariableValue(context,"Temp_GadgetID",evt.param1)
								ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
								--第一次开启火机关
							elseif defs.ClueFire == evt.param1 then
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
								ScriptLib.AddQuestProgress(context, "whitout_quest")
								ScriptLib.SetGroupVariableValue(context,"Temp_GadgetID",evt.param1)
								ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
								--第一次开启风机关
							elseif defs.ClueWind == evt.param1 then
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
								ScriptLib.AddQuestProgress(context, "whitout_quest")
								ScriptLib.SetGroupVariableValue(context,"Temp_GadgetID",evt.param1)
								ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
								--第一次开启水机关
							elseif defs.ClueWater == evt.param1 then
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
								ScriptLib.AddQuestProgress(context, "whitout_quest")
								ScriptLib.SetGroupVariableValue(context,"Temp_GadgetID",evt.param1)
								ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
							end
						end
					end
					--如果玩家开启了移动水面机关，则会开启遗迹守卫怪物的AI和血量，并且解锁无敌状态，和玩家战斗
					if defs.WaterSwitch == evt.param1 then
						if 171 == evt.param2 then
							ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							ScriptLib.AddQuestProgress(context, "whitout_quest")
							ScriptLib.SetGroupVariableValue(context,"Temp_GadgetID",evt.param1)
							ScriptLib.DelWorktopOptionByGroupId(context, 133104053, evt.param1, 171)
						end
				
					end
						
					return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53016(context, evt)
	-- 判断变量"isAcceptQuest"为0
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 0 then
			return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 108, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 109, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 110, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 111, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, 116, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53017(context, evt)
	if evt.param1 ~= 53017 then return false end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53017(context, evt)
	--[[ 					if ScriptLib.GetGroupVariableValue(context,"Region_Thunder") == 0 then
							ScriptLib.SetGroupVariableValue(context, "Region_Thunder", 1)
							if ScriptLib.GetGroupVariableValue(context,"noQuestCount") < 5 then 
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							end
						end
						local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
						
						if loccount == 1 then
							ScriptLib.ShowReminder(context, 31040190)
						elseif loccount == 2 then
							ScriptLib.ShowReminder(context, 31040195)
						elseif loccount == 3 then
							ScriptLib.ShowReminder(context, 31040204)
						elseif loccount == 4 then
							ScriptLib.ShowReminder(context, 31040205)
						elseif loccount == 5 then
							ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							ScriptLib.ShowReminder(context, 31040206)
						elseif loccount == 6 then
							ScriptLib.ShowReminder(context, 31040201)				
						end
		ScriptLib.AddQuestProgress(context, "thunder_whitout_quest") ]]
		ScriptLib.SetGroupVariableValue(context, "Region_Thunder", 1)
		if count == 0 then
			ScriptLib.ShowReminder(context, 31040111)
		elseif count == 1 then
			ScriptLib.ShowReminder(context, 31040121)
		elseif count == 2 then
			ScriptLib.ShowReminder(context, 31040120)
		elseif count == 3 then
			ScriptLib.ShowReminder(context, 31040131)
		end
			
						return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53018(context, evt)
	if evt.param1 ~= 53018 then return false end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53018(context, evt)
	--[[ 		if ScriptLib.GetGroupVariableValue(context,"Region_Water") == 0 then
							ScriptLib.SetGroupVariableValue(context, "Region_Water", 1)
							if ScriptLib.GetGroupVariableValue(context,"noQuestCount") < 5 then 
								ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							end
						end
						local loccount = ScriptLib.GetGroupVariableValue(context,"noQuestCount")
						
						if loccount == 1 then
							ScriptLib.ShowReminder(context, 31040190)
						elseif loccount == 2 then
							ScriptLib.ShowReminder(context, 31040195)
						elseif loccount == 3 then
							ScriptLib.ShowReminder(context, 31040204)
						elseif loccount == 4 then
							ScriptLib.ShowReminder(context, 31040205)
						elseif loccount == 5 then
							ScriptLib.ChangeGroupVariableValue(context, "noQuestCount", 1)
							ScriptLib.ShowReminder(context, 31040206)
						elseif loccount == 6 then
							ScriptLib.ShowReminder(context, 31040201)				
						end
			
						return 0 ]]
						ScriptLib.SetGroupVariableValue(context, "Region_Water", 1)
						if count == 0 then
							ScriptLib.ShowReminder(context, 31040111)
						elseif count == 1 then
							ScriptLib.ShowReminder(context, 31040121)
						elseif count == 2 then
							ScriptLib.ShowReminder(context, 31040120)
						elseif count == 3 then
							ScriptLib.ShowReminder(context, 31040131)
						end
	
						return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_53022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104053, 3)
	
	-- 延迟1秒后,向groupId为：133104053的对象,请求一次调用,并将string参数："SetMonsterBattle" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104053, "SetMonsterBattle", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133104053, "ActiveGurdian") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_53023(context, evt)
	-- 通知groupid为133104053中,configid为：53009的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 53009, 133104053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133104053中,configid为：53010的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 53010, 133104053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133104053中,configid为：53012的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 53012, 133104053) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133104053, "SetMonsterBattle") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_53024(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133104053, 5)
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133104053, "DisableFakeGurdian") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_53025(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	-- 判断变量"isAcceptQuest"为0
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_53025(context, evt)
	local id = ScriptLib.GetGroupVariableValue(context, "Temp_GadgetID")
	ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, id, {171})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53026(context, evt)
	-- 判断变量"Unlock_Water"为1
	if ScriptLib.GetGroupVariableValue(context, "Unlock_Water") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53026(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53027(context, evt)
		--判断任意一只遗迹守卫死亡
		if evt.param1 == 53009 or evt.param1 == 53010 or evt.param1 == 53012 then
		    return true
		 end
		return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "any_gurdian_die") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "AnyGurdianDie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AnyGurdianDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_53028(context, evt)
							-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 1
						if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1) then
						  return -1
						end
					
						ScriptLib.MarkPlayerAction(context, 5001, 1, 1)
						--刷新到GroupSuite2
						ScriptLib.RefreshGroup(context,{group_id = 133104053, suite = 2})
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueFire, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueWind, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueWater, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.ClueThunder, 171)
						ScriptLib.DelWorktopOptionByGroupId(context, 133104053, defs.WaterSwitch, 171)
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueFire, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueWind, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueWater, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.ClueThunder, {7})
						ScriptLib.SetWorktopOptionsByGroupId(context, 133104053, defs.WaterSwitch, {171})
	
						return 0
end