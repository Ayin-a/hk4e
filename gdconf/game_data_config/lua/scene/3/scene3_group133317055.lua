-- 基础信息
local base_info = {
	group_id = 133317055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55003, monster_id = 22040201, pos = { x = 989.689, y = 421.659, z = 6138.962 }, rot = { x = 0.000, y = 160.368, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 30 },
	{ config_id = 55004, monster_id = 22040201, pos = { x = 997.440, y = 422.172, z = 6135.282 }, rot = { x = 0.000, y = 239.560, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 30 },
	{ config_id = 55005, monster_id = 22040201, pos = { x = 987.113, y = 421.774, z = 6135.798 }, rot = { x = 0.000, y = 113.721, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55001, gadget_id = 70220134, pos = { x = 1001.079, y = 425.907, z = 6166.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 55002, gadget_id = 70330404, pos = { x = 994.655, y = 423.727, z = 6142.272 }, rot = { x = 351.327, y = 359.000, z = 13.132 }, level = 1, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 55009, gadget_id = 70300203, pos = { x = 992.435, y = 426.224, z = 6199.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 55010, gadget_id = 70360001, pos = { x = 992.435, y = 426.231, z = 6199.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 418 } }, area_id = 30 }
}

-- 区域
regions = {
	{ config_id = 55006, shape = RegionShape.SPHERE, radius = 15, pos = { x = 993.228, y = 426.003, z = 6147.243 }, area_id = 30 }
}

-- 触发器
triggers = {
	{ config_id = 1055006, name = "ENTER_REGION_55006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55006", action = "action_EVENT_ENTER_REGION_55006" },
	{ config_id = 1055007, name = "ANY_MONSTER_DIE_55007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55007", action = "action_EVENT_ANY_MONSTER_DIE_55007" },
	{ config_id = 1055008, name = "GADGET_STATE_CHANGE_55008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_55008", action = "action_EVENT_GADGET_STATE_CHANGE_55008" },
	{ config_id = 1055011, name = "GADGET_CREATE_55011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_55011", action = "action_EVENT_GADGET_CREATE_55011" },
	{ config_id = 1055012, name = "SELECT_OPTION_55012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_55012", action = "action_EVENT_SELECT_OPTION_55012" }
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
		gadgets = { 55001, 55002, 55010 },
		regions = { 55006 },
		triggers = { "ENTER_REGION_55006", "ANY_MONSTER_DIE_55007", "GADGET_STATE_CHANGE_55008", "GADGET_CREATE_55011", "SELECT_OPTION_55012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 55003, 55004, 55005 },
		gadgets = { 55009 },
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

-- 杀死指定gadget
function TLA_kill_entity_by_configid(context, evt, config_id)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = config_id }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_55006(context, evt)
	if evt.param1 ~= 55006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317055, 2)
	
	-- 调用提示id为 33170201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33170201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55007(context, evt)
	-- 将configid为 55002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_55008(context, evt)
	if 55002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_55008(context, evt)
	TLA_kill_entity_by_configid(context, evt, 55001)
	
	ScriptLib.AddQuestProgress(context, "Q7323509")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_55011(context, evt)
	if 55010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_55011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133317055, 55010, {418}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_55012(context, evt)
	-- 判断是gadgetid 55010 option_id 418
	if 55010 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_55012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7323505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317055, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133317055, EntityType.GADGET, 55010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end