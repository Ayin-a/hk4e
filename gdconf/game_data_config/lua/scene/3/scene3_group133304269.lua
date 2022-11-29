-- 基础信息
local base_info = {
	group_id = 133304269
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269001, monster_id = 25210101, pos = { x = -1098.201, y = 275.678, z = 2152.965 }, rot = { x = 0.000, y = 337.920, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9505, area_id = 21 },
	{ config_id = 269002, monster_id = 25210401, pos = { x = -1099.073, y = 275.861, z = 2152.830 }, rot = { x = 0.000, y = 344.161, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9503, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269006, gadget_id = 70210101, pos = { x = -1090.327, y = 275.004, z = 2154.558 }, rot = { x = 0.000, y = 92.591, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 269007, gadget_id = 70310004, pos = { x = -1099.691, y = 275.631, z = 2153.875 }, rot = { x = 6.095, y = 321.878, z = 344.436 }, level = 27, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 269008, gadget_id = 70710352, pos = { x = -1101.221, y = 275.535, z = 2154.828 }, rot = { x = 9.314, y = 71.989, z = 356.988 }, level = 27, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 269004, shape = RegionShape.SPHERE, radius = 18, pos = { x = -1093.739, y = 273.932, z = 2156.016 }, area_id = 21 },
	{ config_id = 269005, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1097.590, y = 274.841, z = 2155.338 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1269003, name = "ANY_MONSTER_DIE_269003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_269003", action = "action_EVENT_ANY_MONSTER_DIE_269003" },
	{ config_id = 1269004, name = "ENTER_REGION_269004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_269004", action = "action_EVENT_ENTER_REGION_269004" },
	{ config_id = 1269005, name = "ENTER_REGION_269005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 269005 },
		triggers = { "ENTER_REGION_269005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 269001, 269002 },
		gadgets = { 269007, 269008 },
		regions = { 269004 },
		triggers = { "ANY_MONSTER_DIE_269003", "ENTER_REGION_269004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 269006, 269007, 269008 },
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
function condition_EVENT_ANY_MONSTER_DIE_269003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_269003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7317702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_269004(context, evt)
	if evt.param1 ~= 269004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_269004(context, evt)
	-- 调用提示id为 1111317 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111317) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1090.327, y=275.0248, z=2154.558}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1090.327, y=275.0248, z=2154.558}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end