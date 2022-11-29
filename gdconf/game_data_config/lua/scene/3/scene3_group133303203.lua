-- 基础信息
local base_info = {
	group_id = 133303203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 22010301, pos = { x = -1691.367, y = 180.000, z = 3097.523 }, rot = { x = 0.000, y = 229.035, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9013, area_id = 23 },
	{ config_id = 203002, monster_id = 22010301, pos = { x = -1693.755, y = 180.000, z = 3095.789 }, rot = { x = 0.000, y = 54.597, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9013, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203006, gadget_id = 70210101, pos = { x = -1695.999, y = 181.713, z = 3100.495 }, rot = { x = 0.000, y = 309.599, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 203004, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1691.849, y = 176.118, z = 3100.572 }, area_id = 23 },
	{ config_id = 203005, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1692.445, y = 185.213, z = 3092.586 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1203003, name = "ANY_MONSTER_DIE_203003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_203003", action = "action_EVENT_ANY_MONSTER_DIE_203003" },
	{ config_id = 1203004, name = "ENTER_REGION_203004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203004", action = "action_EVENT_ENTER_REGION_203004" },
	{ config_id = 1203005, name = "ENTER_REGION_203005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { },
		regions = { 203005 },
		triggers = { "ENTER_REGION_203005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 203001, 203002 },
		gadgets = { },
		regions = { 203004 },
		triggers = { "ANY_MONSTER_DIE_203003", "ENTER_REGION_203004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 203006 },
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
function condition_EVENT_ANY_MONSTER_DIE_203003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_203003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7317502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203004(context, evt)
	if evt.param1 ~= 203004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203004(context, evt)
	-- 调用提示id为 1111318 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111318) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1695.999, y=181.7133, z=3100.495}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1695.999, y=181.7133, z=3100.495}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end