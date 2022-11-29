-- 基础信息
local base_info = {
	group_id = 220158005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 22040101, pos = { x = 200.733, y = 192.036, z = 578.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1109 }, pose_id = 101 },
	{ config_id = 5002, monster_id = 22040101, pos = { x = 202.318, y = 189.870, z = 589.548 }, rot = { x = 0.000, y = 63.253, z = 0.000 }, level = 1, disableWander = true, affix = { 1109 }, pose_id = 101 },
	{ config_id = 5003, monster_id = 22050101, pos = { x = 193.075, y = 191.703, z = 582.917 }, rot = { x = 0.000, y = 64.985, z = 0.000 }, level = 1, disableWander = true, affix = { 1109 }, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5005, gadget_id = 70220103, pos = { x = 218.539, y = 212.399, z = 539.874 }, rot = { x = 0.000, y = 69.051, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70220103, pos = { x = 240.737, y = 227.614, z = 514.802 }, rot = { x = 0.000, y = 69.051, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70220103, pos = { x = 283.480, y = 229.556, z = 546.149 }, rot = { x = 0.000, y = 69.051, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5009, shape = RegionShape.SPHERE, radius = 15, pos = { x = 201.462, y = 190.082, z = 587.964 } }
}

-- 触发器
triggers = {
	{ config_id = 1005004, name = "ANY_MONSTER_DIE_5004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5004", action = "action_EVENT_ANY_MONSTER_DIE_5004" },
	{ config_id = 1005009, name = "ENTER_REGION_5009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5009", action = "action_EVENT_ENTER_REGION_5009", trigger_count = 0 }
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
		monsters = { 5001, 5002, 5003 },
		gadgets = { },
		regions = { 5009 },
		triggers = { "ANY_MONSTER_DIE_5004", "ENTER_REGION_5009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5005, 5006, 5008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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
function condition_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220158005, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=218.539, y=212.399, z=539.8741}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=218.539, y=212.399, z=539.8741}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201580103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201580103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220158002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5009(context, evt)
	if evt.param1 ~= 5009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5009(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220158002, 5)
	
	return 0
end