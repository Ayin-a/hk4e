-- 基础信息
local base_info = {
	group_id = 199002016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16003, monster_id = 21010101, pos = { x = 211.534, y = 120.192, z = -175.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9016, area_id = 401 },
	{ config_id = 16004, monster_id = 21010101, pos = { x = 212.596, y = 120.377, z = -173.156 }, rot = { x = 0.000, y = 176.297, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16002, gadget_id = 70950145, pos = { x = 214.017, y = 120.212, z = -172.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 16001, shape = RegionShape.SPHERE, radius = 40, pos = { x = 213.241, y = 120.326, z = -170.944 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1016001, name = "ENTER_REGION_16001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16001", action = "action_EVENT_ENTER_REGION_16001", trigger_count = 0 }
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
		monsters = { 16003, 16004 },
		gadgets = { 16002 },
		regions = { 16001 },
		triggers = { "ENTER_REGION_16001" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_16001(context, evt)
	if evt.param1 ~= 16001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902112finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=213.2409,y=120.3259,z=-170.9435}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111024, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end