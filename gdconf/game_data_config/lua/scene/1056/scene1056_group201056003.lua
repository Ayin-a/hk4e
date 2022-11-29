-- 基础信息
local base_info = {
	group_id = 201056003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3005, monster_id = 21011201, pos = { x = -49.460, y = -0.831, z = 20.151 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 21010502, pos = { x = -43.795, y = -0.822, z = 28.613 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 3007, monster_id = 21030401, pos = { x = -48.688, y = -0.832, z = 23.511 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3012, monster_id = 21010201, pos = { x = -51.999, y = -0.823, z = 25.114 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9010 },
	{ config_id = 3013, monster_id = 21020301, pos = { x = -44.020, y = -0.822, z = 23.359 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 3042, monster_id = 22010101, pos = { x = -49.240, y = -0.814, z = 25.228 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3043, monster_id = 21011201, pos = { x = -49.520, y = -0.814, z = 28.734 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3044, monster_id = 21010901, pos = { x = -38.036, y = -0.769, z = 24.902 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3045, monster_id = 21011001, pos = { x = -46.845, y = -0.821, z = 18.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3046, monster_id = 21020301, pos = { x = -41.314, y = -0.815, z = 21.002 }, rot = { x = 0.000, y = 335.572, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70710183, pos = { x = -61.609, y = 0.758, z = 24.920 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70900201, pos = { x = -49.742, y = -0.018, z = 25.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70350005, pos = { x = -33.168, y = -0.996, z = 24.837 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70350005, pos = { x = -48.918, y = -1.197, z = 40.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70710182, pos = { x = -61.669, y = 2.093, z = 24.920 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70900201, pos = { x = -61.572, y = 2.708, z = 24.920 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70220013, pos = { x = -35.758, y = -0.798, z = 34.716 }, rot = { x = 0.000, y = 15.749, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70220013, pos = { x = -36.424, y = -0.799, z = 15.510 }, rot = { x = 0.000, y = 317.183, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220013, pos = { x = -35.281, y = -0.754, z = 17.324 }, rot = { x = 0.000, y = 344.974, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220026, pos = { x = -37.298, y = -0.873, z = 35.376 }, rot = { x = 0.000, y = 328.560, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220026, pos = { x = -35.301, y = -0.777, z = 32.995 }, rot = { x = 0.000, y = 273.089, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220026, pos = { x = -35.509, y = -0.827, z = 13.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70220025, pos = { x = -37.120, y = -0.775, z = 14.770 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70310004, pos = { x = -46.266, y = -0.826, z = 26.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3033, gadget_id = 70710181, pos = { x = -61.673, y = 2.095, z = 24.920 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3035, gadget_id = 70360002, pos = { x = -49.007, y = -0.886, z = 49.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3037, gadget_id = 70360006, pos = { x = -47.660, y = -0.191, z = 78.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3048, gadget_id = 70211101, pos = { x = -48.840, y = -0.914, z = 62.442 }, rot = { x = 5.000, y = 30.000, z = 3.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 3016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 5.000 }, pos = { x = -48.882, y = 0.640, z = 36.320 } }
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "QUEST_FINISH_3001", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3001", action = "action_EVENT_QUEST_FINISH_3001" },
	{ config_id = 1003008, name = "ANY_MONSTER_DIE_3008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3008", action = "action_EVENT_ANY_MONSTER_DIE_3008" },
	{ config_id = 1003010, name = "GADGET_STATE_CHANGE_3010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3010", action = "action_EVENT_GADGET_STATE_CHANGE_3010" },
	{ config_id = 1003014, name = "QUEST_FINISH_3014", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3014", action = "action_EVENT_QUEST_FINISH_3014" },
	{ config_id = 1003016, name = "ENTER_REGION_3016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3016", action = "action_EVENT_ENTER_REGION_3016" },
	{ config_id = 1003036, name = "SELECT_OPTION_3036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3036", action = "action_EVENT_SELECT_OPTION_3036" },
	{ config_id = 1003041, name = "ANY_MONSTER_DIE_3041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3041", action = "action_EVENT_ANY_MONSTER_DIE_3041" },
	{ config_id = 1003047, name = "ANY_MONSTER_DIE_3047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3047", action = "action_EVENT_ANY_MONSTER_DIE_3047" },
	{ config_id = 1003049, name = "GADGET_STATE_CHANGE_3049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3049", action = "action_EVENT_GADGET_STATE_CHANGE_3049", trigger_count = 0 },
	{ config_id = 1003050, name = "GADGET_STATE_CHANGE_3050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3050", action = "action_EVENT_GADGET_STATE_CHANGE_3050", trigger_count = 0 }
}

-- 变量
variables = {
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
		monsters = { 3006, 3007, 3012, 3013 },
		gadgets = { 3002, 3004, 3009, 3011, 3019, 3020, 3021, 3022, 3023, 3024, 3031, 3032, 3033, 3035, 3037 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_3010", "SELECT_OPTION_3036", "ANY_MONSTER_DIE_3041", "GADGET_STATE_CHANGE_3049", "GADGET_STATE_CHANGE_3050" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3044, 3045, 3046 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3047" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3005, 3042, 3043 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_3001", "ANY_MONSTER_DIE_3008", "QUEST_FINISH_3014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 3048 },
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
function condition_EVENT_QUEST_FINISH_3001(context, evt)
	--检查ID为1102313的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1102313 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3001(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1102312") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为3015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3010(context, evt)
	if 3035 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201056003, 3035, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3014(context, evt)
	--检查ID为1102309的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1102309 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3014(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201056003, monsters = {}, gadgets = {3015} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3016(context, evt)
	if evt.param1 ~= 3016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3016(context, evt)
	-- 将configid为 3009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3036(context, evt)
	-- 判断是gadgetid 3035 option_id 7
	if 3035 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3036(context, evt)
	-- 删除指定group： 201056003 ；指定config：3035；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201056003, 3035, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201056002, monsters = {}, gadgets = {2024} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 将configid为 3035 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3035, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3041(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3041(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201056003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3047(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201056003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3049(context, evt)
	if 3037 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3049(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201056003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3050(context, evt)
	if 3037 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3050(context, evt)
	-- 将configid为 3048 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3048, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201056003, 4)
	
	return 0
end