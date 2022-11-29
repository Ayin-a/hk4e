-- 基础信息
local base_info = {
	group_id = 220103004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 22010301, pos = { x = -145.273, y = 18.036, z = 47.016 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 22010101, pos = { x = -149.004, y = 18.036, z = 46.974 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4003, gadget_id = 70211021, pos = { x = -147.039, y = 18.016, z = 41.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 4004, gadget_id = 70900201, pos = { x = -144.487, y = 15.459, z = 75.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70500000, pos = { x = -148.599, y = 18.016, z = 42.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2010, isOneoff = true },
	{ config_id = 4008, gadget_id = 70500000, pos = { x = -145.184, y = 18.145, z = 40.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2010, isOneoff = true },
	{ config_id = 4010, gadget_id = 70900205, pos = { x = -136.441, y = 14.224, z = 30.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70220013, pos = { x = -136.083, y = 19.017, z = 46.950 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4012, gadget_id = 70220013, pos = { x = -136.360, y = 19.016, z = 44.696 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70220013, pos = { x = -157.057, y = 19.016, z = 47.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4014, gadget_id = 70220026, pos = { x = -157.237, y = 19.017, z = 45.476 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4015, gadget_id = 70220026, pos = { x = -156.663, y = 19.016, z = 44.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4016, gadget_id = 70220025, pos = { x = -148.505, y = 18.071, z = 42.029 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220025, pos = { x = -140.772, y = 18.085, z = 51.383 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220025, pos = { x = -142.357, y = 18.076, z = 51.461 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70220025, pos = { x = -141.318, y = 18.083, z = 49.987 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4020, gadget_id = 70220025, pos = { x = -150.252, y = 18.076, z = 41.179 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4021, gadget_id = 70220025, pos = { x = -150.929, y = 18.071, z = 42.320 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4006, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 10.000 }, pos = { x = -146.268, y = 23.810, z = 71.168 } }
}

-- 触发器
triggers = {
	{ config_id = 1004006, name = "ENTER_REGION_4006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4006", action = "action_EVENT_ENTER_REGION_4006" },
	{ config_id = 1004007, name = "ANY_MONSTER_DIE_4007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4007", action = "action_EVENT_ANY_MONSTER_DIE_4007" },
	{ config_id = 1004009, name = "QUEST_FINISH_4009", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_4009", action = "action_EVENT_QUEST_FINISH_4009" }
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
		monsters = { },
		gadgets = { 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4002 },
		gadgets = { 4004, 4005, 4008, 4010 },
		regions = { 4006 },
		triggers = { "ENTER_REGION_4006", "ANY_MONSTER_DIE_4007", "QUEST_FINISH_4009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4006(context, evt)
	if evt.param1 ~= 4006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4006(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220103004, monsters = {}, gadgets = {4004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220103004") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_4009(context, evt)
	--检查ID为1800018的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1800018 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_4009(context, evt)
	-- 创建id为4003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end