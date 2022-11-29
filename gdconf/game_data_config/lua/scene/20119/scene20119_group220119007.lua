-- 基础信息
local base_info = {
	group_id = 220119007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 25080101, pos = { x = -15.472, y = 1.580, z = -15.866 }, rot = { x = 0.000, y = 100.282, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 7002, monster_id = 25080101, pos = { x = -14.602, y = 1.580, z = -26.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 7003, monster_id = 25080201, pos = { x = -16.700, y = 1.580, z = -4.834 }, rot = { x = 0.000, y = 151.145, z = 0.000 }, level = 1, pose_id = 1003 },
	{ config_id = 7004, monster_id = 25080201, pos = { x = -3.759, y = 1.384, z = -6.187 }, rot = { x = 0.000, y = 210.391, z = 0.000 }, level = 1, pose_id = 1003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7005, gadget_id = 70290137, pos = { x = 0.133, y = 1.656, z = -13.453 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, gadget_id = 70290138, pos = { x = -15.276, y = 1.481, z = 0.586 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 7009, gadget_id = 70290242, pos = { x = -12.549, y = 1.460, z = -29.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, gadget_id = 70290242, pos = { x = -17.084, y = 1.460, z = -29.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, gadget_id = 70290242, pos = { x = -20.091, y = 1.680, z = -24.080 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, gadget_id = 70290242, pos = { x = -20.091, y = 1.680, z = -19.693 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7013, gadget_id = 70290242, pos = { x = -20.040, y = 1.580, z = -10.166 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7014, gadget_id = 70290242, pos = { x = -20.040, y = 1.580, z = -5.780 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7015, gadget_id = 70290242, pos = { x = -12.549, y = 4.324, z = -29.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7016, gadget_id = 70290242, pos = { x = -17.084, y = 4.324, z = -29.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7017, gadget_id = 70290242, pos = { x = -20.091, y = 4.544, z = -24.080 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7018, gadget_id = 70290242, pos = { x = -20.091, y = 4.544, z = -19.693 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7019, gadget_id = 70290242, pos = { x = -20.040, y = 4.444, z = -10.166 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7020, gadget_id = 70290242, pos = { x = -20.040, y = 4.444, z = -5.780 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 7021, gadget_id = 70211022, pos = { x = -18.498, y = 1.580, z = -14.857 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 7008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6.625, y = 4.727, z = -27.678 } }
}

-- 触发器
triggers = {
	{ config_id = 1007007, name = "ANY_MONSTER_DIE_7007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7007", action = "action_EVENT_ANY_MONSTER_DIE_7007" },
	{ config_id = 1007008, name = "ENTER_REGION_7008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7008", action = "action_EVENT_ENTER_REGION_7008" },
	{ config_id = 1007022, name = "QUEST_FINISH_7022", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_7022", action = "action_EVENT_QUEST_FINISH_7022" },
	{ config_id = 1007023, name = "TIMER_EVENT_7023", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_7023" }
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
		gadgets = { 7005, 7006, 7009, 7010, 7011, 7012, 7013, 7014, 7021 },
		regions = { 7008 },
		triggers = { "ANY_MONSTER_DIE_7007", "ENTER_REGION_7008", "QUEST_FINISH_7022", "TIMER_EVENT_7023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7009, 7010, 7011, 7012, 7013, 7014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7015, 7016, 7017, 7018, 7019, 7020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 7001, 7002, 7003, 7004 },
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
function condition_EVENT_ANY_MONSTER_DIE_7007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220119010, 2)
	
	-- 将configid为 7005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220119013, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 延迟1秒后,向groupId为：220119007的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220119007, "delay", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201190071") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 7021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7008(context, evt)
	if evt.param1 ~= 7008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7008(context, evt)
	-- 调用提示id为 201190201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201190201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_7022(context, evt)
	--检查ID为1202613的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1202613 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_7022(context, evt)
	-- 改变指定group组220119009中， configid为9017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220119009, 9017, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7023(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220119007, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220119007, 3)
	
	return 0
end