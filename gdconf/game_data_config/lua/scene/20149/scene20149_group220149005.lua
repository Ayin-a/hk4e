-- 基础信息
local base_info = {
	group_id = 220149005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5007, monster_id = 24020401, pos = { x = 428.632, y = 98.472, z = 315.889 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5008, monster_id = 24020201, pos = { x = 435.672, y = 98.501, z = 307.224 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5010, monster_id = 24020101, pos = { x = 434.443, y = 98.489, z = 317.244 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 5012, monster_id = 24020401, pos = { x = 431.553, y = 98.713, z = 303.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70290528, pos = { x = 530.090, y = 114.980, z = 308.200 }, rot = { x = 2.725, y = 117.328, z = 354.235 }, level = 1 },
	{ config_id = 5003, gadget_id = 70290465, pos = { x = 435.001, y = 126.491, z = 312.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70290480, pos = { x = 455.950, y = 147.771, z = 334.970 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70950156, pos = { x = 431.279, y = 98.499, z = 310.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, gadget_id = 70290528, pos = { x = 473.390, y = 113.430, z = 306.050 }, rot = { x = 2.725, y = 297.328, z = 354.235 }, level = 1 },
	{ config_id = 5027, gadget_id = 70290480, pos = { x = 411.829, y = 126.445, z = 312.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 437.723, y = 157.238, z = 318.196 } },
	{ config_id = 5023, shape = RegionShape.CUBIC, size = { x = 10.000, y = 6.000, z = 10.000 }, pos = { x = 434.627, y = 129.672, z = 331.286 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "QUEST_FINISH_5002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_5002", action = "action_EVENT_QUEST_FINISH_5002" },
	{ config_id = 1005005, name = "TIMER_EVENT_5005", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_5005" },
	{ config_id = 1005013, name = "ANY_MONSTER_DIE_5013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5013", action = "action_EVENT_ANY_MONSTER_DIE_5013" },
	{ config_id = 1005014, name = "ANY_MONSTER_DIE_5014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5014", action = "action_EVENT_ANY_MONSTER_DIE_5014" },
	{ config_id = 1005022, name = "ENTER_REGION_5022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5022", action = "action_EVENT_ENTER_REGION_5022" },
	{ config_id = 1005023, name = "ENTER_REGION_5023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5023", action = "action_EVENT_ENTER_REGION_5023" }
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
		gadgets = { 5001, 5003, 5004, 5009, 5027 },
		regions = { 5022, 5023 },
		triggers = { "QUEST_FINISH_5002", "ENTER_REGION_5022", "ENTER_REGION_5023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5007, 5008 },
		gadgets = { 5006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5010, 5012 },
		gadgets = { },
		regions = { },
		triggers = { "TIMER_EVENT_5005", "ANY_MONSTER_DIE_5014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_5002(context, evt)
	--检查ID为1300210的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300210 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_5002(context, evt)
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "130020901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220149005, EntityType.GADGET, 5006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220149005, 3)
	
	-- 调用提示id为 201490401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201490401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5014(context, evt)
	-- 延迟3秒后,向groupId为：220149005的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220149005, "1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5022(context, evt)
	if evt.param1 ~= 5022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5022(context, evt)
	-- 调用提示id为 201490301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201490301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5023(context, evt)
	if evt.param1 ~= 5023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5023(context, evt)
	-- 调用提示id为 201490201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201490201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end