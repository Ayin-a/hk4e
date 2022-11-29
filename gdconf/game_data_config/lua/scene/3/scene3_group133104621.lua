-- 基础信息
local base_info = {
	group_id = 133104621
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 621020, npc_id = 20108, pos = { x = 411.871, y = 181.954, z = 852.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 621021, npc_id = 20109, pos = { x = 332.463, y = 154.822, z = 1005.754 }, rot = { x = 0.000, y = 168.043, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
	{ config_id = 621001, gadget_id = 70360087, pos = { x = 403.470, y = 196.021, z = 810.789 }, rot = { x = 346.693, y = 187.482, z = 3.955 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621002, gadget_id = 70360087, pos = { x = 455.722, y = 213.547, z = 811.377 }, rot = { x = 14.754, y = 320.125, z = 8.497 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621003, gadget_id = 70360087, pos = { x = 439.735, y = 190.113, z = 854.291 }, rot = { x = 352.462, y = 43.319, z = 8.398 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621004, gadget_id = 70360087, pos = { x = 452.466, y = 217.688, z = 892.818 }, rot = { x = 0.651, y = 323.571, z = 19.739 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621005, gadget_id = 70360087, pos = { x = 343.002, y = 216.342, z = 820.467 }, rot = { x = 343.576, y = 216.280, z = 352.400 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621006, gadget_id = 70360087, pos = { x = 297.004, y = 208.839, z = 857.070 }, rot = { x = 7.373, y = 60.868, z = 2.466 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621007, gadget_id = 70360087, pos = { x = 285.384, y = 228.007, z = 917.716 }, rot = { x = 8.400, y = 26.671, z = 350.501 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621008, gadget_id = 70360087, pos = { x = 339.710, y = 220.816, z = 967.335 }, rot = { x = 6.275, y = 150.656, z = 6.838 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621009, gadget_id = 70360087, pos = { x = 397.349, y = 199.111, z = 957.677 }, rot = { x = 6.574, y = 222.651, z = 9.892 }, level = 19, isOneoff = true, persistent = true, interact_id = 7, area_id = 6 },
	{ config_id = 621019, gadget_id = 70710091, pos = { x = 411.895, y = 180.895, z = 852.248 }, rot = { x = 0.000, y = 167.459, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 621022, gadget_id = 70360088, pos = { x = 394.482, y = 187.350, z = 887.802 }, rot = { x = 0.000, y = 152.279, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621024, gadget_id = 70360071, pos = { x = 403.634, y = 196.188, z = 812.097 }, rot = { x = 3.863, y = 98.331, z = 13.333 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621026, gadget_id = 70360071, pos = { x = 456.396, y = 214.337, z = 810.466 }, rot = { x = 352.593, y = 47.942, z = 14.943 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621027, gadget_id = 70360072, pos = { x = 438.479, y = 191.696, z = 853.393 }, rot = { x = 8.191, y = 315.428, z = 7.762 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621028, gadget_id = 70360086, pos = { x = 452.730, y = 219.433, z = 891.448 }, rot = { x = 1.337, y = 322.695, z = 20.379 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621029, gadget_id = 70360086, pos = { x = 343.833, y = 217.713, z = 821.994 }, rot = { x = 343.721, y = 216.258, z = 352.092 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621030, gadget_id = 70360072, pos = { x = 295.782, y = 208.048, z = 856.356 }, rot = { x = 357.513, y = 150.914, z = 7.670 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621031, gadget_id = 70360086, pos = { x = 285.231, y = 229.959, z = 916.697 }, rot = { x = 350.182, y = 298.460, z = 351.714 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621032, gadget_id = 70360086, pos = { x = 339.328, y = 222.684, z = 968.339 }, rot = { x = 353.668, y = 239.485, z = 6.331 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621033, gadget_id = 70360086, pos = { x = 398.299, y = 200.997, z = 958.264 }, rot = { x = 350.320, y = 311.181, z = 6.438 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 621044, gadget_id = 70211111, pos = { x = 402.937, y = 183.143, z = 813.539 }, rot = { x = 0.000, y = 5.558, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621045, gadget_id = 70211111, pos = { x = 456.944, y = 201.132, z = 812.665 }, rot = { x = 13.754, y = 326.837, z = 11.126 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621046, gadget_id = 70211111, pos = { x = 437.439, y = 180.664, z = 851.173 }, rot = { x = 1.757, y = 235.202, z = 0.959 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621047, gadget_id = 70211111, pos = { x = 451.948, y = 210.266, z = 891.309 }, rot = { x = 1.757, y = 235.202, z = 0.959 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621048, gadget_id = 70211111, pos = { x = 345.620, y = 208.429, z = 822.674 }, rot = { x = 357.999, y = 27.036, z = 359.984 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621049, gadget_id = 70211111, pos = { x = 298.820, y = 196.343, z = 857.843 }, rot = { x = 358.393, y = 63.154, z = 358.807 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621050, gadget_id = 70211111, pos = { x = 286.314, y = 220.944, z = 914.851 }, rot = { x = 20.972, y = 124.761, z = 7.073 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621051, gadget_id = 70211111, pos = { x = 341.278, y = 213.560, z = 963.629 }, rot = { x = 4.227, y = 147.702, z = 9.071 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 621052, gadget_id = 70211111, pos = { x = 393.863, y = 192.643, z = 962.798 }, rot = { x = 346.651, y = 309.265, z = 1.458 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1621010, name = "GADGET_STATE_CHANGE_621010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621010", action = "action_EVENT_GADGET_STATE_CHANGE_621010" },
	{ config_id = 1621011, name = "GADGET_STATE_CHANGE_621011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621011", action = "action_EVENT_GADGET_STATE_CHANGE_621011" },
	{ config_id = 1621012, name = "GADGET_STATE_CHANGE_621012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621012", action = "action_EVENT_GADGET_STATE_CHANGE_621012" },
	{ config_id = 1621013, name = "GADGET_STATE_CHANGE_621013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621013", action = "action_EVENT_GADGET_STATE_CHANGE_621013" },
	{ config_id = 1621014, name = "GADGET_STATE_CHANGE_621014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621014", action = "action_EVENT_GADGET_STATE_CHANGE_621014" },
	{ config_id = 1621015, name = "GADGET_STATE_CHANGE_621015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621015", action = "action_EVENT_GADGET_STATE_CHANGE_621015" },
	{ config_id = 1621016, name = "GADGET_STATE_CHANGE_621016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621016", action = "action_EVENT_GADGET_STATE_CHANGE_621016" },
	{ config_id = 1621017, name = "GADGET_STATE_CHANGE_621017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621017", action = "action_EVENT_GADGET_STATE_CHANGE_621017" },
	{ config_id = 1621018, name = "GADGET_STATE_CHANGE_621018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621018", action = "action_EVENT_GADGET_STATE_CHANGE_621018" },
	{ config_id = 1621023, name = "QUEST_FINISH_621023", event = EventType.EVENT_QUEST_FINISH, source = "7100521", condition = "condition_EVENT_QUEST_FINISH_621023", action = "action_EVENT_QUEST_FINISH_621023" },
	{ config_id = 1621025, name = "ANY_GADGET_DIE_621025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621025", action = "action_EVENT_ANY_GADGET_DIE_621025" },
	{ config_id = 1621034, name = "ANY_GADGET_DIE_621034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621034", action = "action_EVENT_ANY_GADGET_DIE_621034" },
	{ config_id = 1621035, name = "ANY_GADGET_DIE_621035", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621035", action = "action_EVENT_ANY_GADGET_DIE_621035" },
	{ config_id = 1621036, name = "ANY_GADGET_DIE_621036", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621036", action = "action_EVENT_ANY_GADGET_DIE_621036" },
	{ config_id = 1621037, name = "ANY_GADGET_DIE_621037", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621037", action = "action_EVENT_ANY_GADGET_DIE_621037" },
	{ config_id = 1621038, name = "ANY_GADGET_DIE_621038", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621038", action = "action_EVENT_ANY_GADGET_DIE_621038" },
	{ config_id = 1621039, name = "ANY_GADGET_DIE_621039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621039", action = "action_EVENT_ANY_GADGET_DIE_621039" },
	{ config_id = 1621040, name = "ANY_GADGET_DIE_621040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621040", action = "action_EVENT_ANY_GADGET_DIE_621040" },
	{ config_id = 1621041, name = "ANY_GADGET_DIE_621041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621041", action = "action_EVENT_ANY_GADGET_DIE_621041" },
	{ config_id = 1621042, name = "TIMER_EVENT_621042", event = EventType.EVENT_TIMER_EVENT, source = "gateopen", condition = "", action = "action_EVENT_TIMER_EVENT_621042" },
	{ config_id = 1621053, name = "GROUP_LOAD_621053", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_621053", trigger_count = 0 },
	{ config_id = 1621054, name = "GROUP_LOAD_621054", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_621054", action = "action_EVENT_GROUP_LOAD_621054" }
}

-- 变量
variables = {
	{ config_id = 1, name = "pillarsover", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1621043, name = "GADGET_CREATE_621043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_621043", action = "action_EVENT_GADGET_CREATE_621043", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 621001, 621002, 621003, 621004, 621005, 621006, 621007, 621008, 621009, 621019, 621022, 621024, 621026, 621027, 621028, 621029, 621030, 621031, 621032, 621033 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_621010", "GADGET_STATE_CHANGE_621011", "GADGET_STATE_CHANGE_621012", "GADGET_STATE_CHANGE_621013", "GADGET_STATE_CHANGE_621014", "GADGET_STATE_CHANGE_621015", "GADGET_STATE_CHANGE_621016", "GADGET_STATE_CHANGE_621017", "GADGET_STATE_CHANGE_621018", "QUEST_FINISH_621023", "ANY_GADGET_DIE_621025", "ANY_GADGET_DIE_621034", "ANY_GADGET_DIE_621035", "ANY_GADGET_DIE_621036", "ANY_GADGET_DIE_621037", "ANY_GADGET_DIE_621038", "ANY_GADGET_DIE_621039", "ANY_GADGET_DIE_621040", "ANY_GADGET_DIE_621041", "TIMER_EVENT_621042", "GROUP_LOAD_621053", "GROUP_LOAD_621054" },
		npcs = { 621020, 621021 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621010(context, evt)
	if 621001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462101 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462101, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621011(context, evt)
	if 621002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462102 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462102, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621012(context, evt)
	if 621003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462103 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462103, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621013(context, evt)
	if 621004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462104 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462104, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621014(context, evt)
	if 621005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462105 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462105, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621015(context, evt)
	if 621006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462106 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462106, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621016(context, evt)
	if 621007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462107 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462107, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621017(context, evt)
	if 621008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462108 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462108, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621018(context, evt)
	if 621009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100511_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310462109 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310462109, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_621023(context, evt)
	--检查ID为7100521的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7100521 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_621023(context, evt)
	-- 将本组内变量名为 "pillarsover" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pillarsover", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟9秒后,向groupId为：133104621的对象,请求一次调用,并将string参数："gateopen" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104621, "gateopen", 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621025(context, evt)
	if 621001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100502_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621044的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621044 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621034(context, evt)
	if 621002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621034(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100503_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621045的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621045 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621035(context, evt)
	if 621003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621035(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100504_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621046的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621046 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621036(context, evt)
	if 621004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621036(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100505_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621037(context, evt)
	if 621005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621037(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100506_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621038(context, evt)
	if 621006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621038(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100507_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621039(context, evt)
	if 621007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100508_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621050的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621050 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621040(context, evt)
	if 621008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100509_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621051的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621051 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621041(context, evt)
	if 621009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621041(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7100510_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 621033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621052的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621052 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_621042(context, evt)
	-- 将configid为 621022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_621053(context, evt)
	for i=1,9 do
	                local ret = ScriptLib.GetGadgetStateByConfigId(context, 133104621, gadgets[i].config_id)
	                if ret ~= -1 then
	                        return -1
	                end
	        end
	ScriptLib.AddQuestProgress(context, "7100521_end")
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 621024 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621026 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621027 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621028 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621029 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621030 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621031 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621032 })
	ScriptLib.KillEntityByConfigId(context, { config_id = 621033 })
	ScriptLib.SetGroupVariableValue(context, "pillarsover", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_621054(context, evt)
	-- 判断变量"pillarsover"为1
	if ScriptLib.GetGroupVariableValue(context, "pillarsover") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_621054(context, evt)
	-- 将configid为 621022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为621044的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621044 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621045的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621045 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621046的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621046 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621050的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621050 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621051的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621051 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为621052的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621052 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end