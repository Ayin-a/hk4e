-- 基础信息
local base_info = {
	group_id = 133303128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128002, monster_id = 21020101, pos = { x = -1177.524, y = 233.051, z = 3692.906 }, rot = { x = 0.000, y = 250.733, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 401, area_id = 23 },
	{ config_id = 128006, monster_id = 21010101, pos = { x = -1181.246, y = 233.588, z = 3696.475 }, rot = { x = 0.000, y = 184.326, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9012, area_id = 23 },
	{ config_id = 128007, monster_id = 21010101, pos = { x = -1181.039, y = 233.833, z = 3693.230 }, rot = { x = 0.000, y = 2.156, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128001, gadget_id = 70210101, pos = { x = -1185.665, y = 236.345, z = 3694.410 }, rot = { x = 0.000, y = 338.056, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 128004, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1186.531, y = 236.162, z = 3692.221 }, area_id = 23 },
	{ config_id = 128005, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1182.854, y = 234.420, z = 3694.181 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1128003, name = "ANY_MONSTER_DIE_128003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128003", action = "action_EVENT_ANY_MONSTER_DIE_128003" },
	{ config_id = 1128004, name = "ENTER_REGION_128004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128004", action = "action_EVENT_ENTER_REGION_128004" },
	{ config_id = 1128005, name = "ENTER_REGION_128005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 128005 },
		triggers = { "ENTER_REGION_128005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 128002, 128006, 128007 },
		gadgets = { },
		regions = { 128004 },
		triggers = { "ANY_MONSTER_DIE_128003", "ENTER_REGION_128004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 128001 },
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
function condition_EVENT_ANY_MONSTER_DIE_128003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7317402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128004(context, evt)
	if evt.param1 ~= 128004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128004(context, evt)
	-- 调用提示id为 1111318 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111318) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1185.619, y=236.3134, z=3694.482}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1185.619, y=236.3134, z=3694.482}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end