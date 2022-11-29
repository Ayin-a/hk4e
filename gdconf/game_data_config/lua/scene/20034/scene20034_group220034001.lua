-- 基础信息
local base_info = {
	group_id = 220034001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29030104, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 121, special_name_id = 5, mark_flag = 1 },
	{ config_id = 1004, monster_id = 29030105, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 122, special_name_id = 5, mark_flag = 7 },
	{ config_id = 1009, monster_id = 29030106, pos = { x = 0.000, y = -56.267, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 123, special_name_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 42903006, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 42903007, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	{ config_id = 1008, gadget_id = 42903201, pos = { x = 0.000, y = -56.269, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70710169, pos = { x = 0.000, y = -18.750, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70710168, pos = { x = -13.920, y = -15.870, z = -33.810 }, rot = { x = 0.000, y = 22.500, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70710168, pos = { x = 14.070, y = -15.870, z = -34.028 }, rot = { x = 0.000, y = 337.500, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70710168, pos = { x = 33.900, y = -15.870, z = -14.080 }, rot = { x = 0.000, y = 292.500, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70710168, pos = { x = 33.870, y = -15.870, z = 13.880 }, rot = { x = 0.000, y = 247.500, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70710168, pos = { x = 14.010, y = -15.870, z = 33.640 }, rot = { x = 0.000, y = 202.500, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70710168, pos = { x = -33.628, y = -15.870, z = -13.820 }, rot = { x = 0.000, y = 67.500, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70710168, pos = { x = -33.850, y = -15.870, z = 14.070 }, rot = { x = 0.000, y = 112.500, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70710168, pos = { x = -13.890, y = -15.870, z = 33.960 }, rot = { x = 0.000, y = 157.500, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70710166, pos = { x = 0.000, y = 20.920, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70710167, pos = { x = -9.967, y = 9.114, z = -31.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70710167, pos = { x = 9.973, y = 9.114, z = -31.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70710167, pos = { x = -31.677, y = 9.114, z = -9.716 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70710167, pos = { x = -31.677, y = 9.114, z = 9.824 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70710167, pos = { x = 32.373, y = 9.114, z = -9.716 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70710167, pos = { x = 32.373, y = 9.114, z = 9.824 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70710167, pos = { x = 9.973, y = 9.114, z = 31.814 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70710167, pos = { x = -9.967, y = 9.114, z = 31.814 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70360001, pos = { x = -2.750, y = -56.281, z = -8.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70710192, pos = { x = 0.000, y = -19.050, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70710206, pos = { x = 0.000, y = -19.080, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70210106, pos = { x = -0.088, y = -56.267, z = 10.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "公子", persistent = true, boss_chest = {monster_config_id=1009, resin=60, life_time=1800, take_num=1} }
}

-- 区域
regions = {
	{ config_id = 1036, shape = RegionShape.SPHERE, radius = 15, pos = { x = 0.000, y = -56.267, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" },
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006", trigger_count = 0 },
	{ config_id = 1001029, name = "ANY_MONSTER_DIE_1029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1029", action = "action_EVENT_ANY_MONSTER_DIE_1029", trigger_count = 0 },
	{ config_id = 1001033, name = "GADGET_STATE_CHANGE_1033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1033", action = "action_EVENT_GADGET_STATE_CHANGE_1033", trigger_count = 0 },
	{ config_id = 1001034, name = "TIMER_EVENT_1034", event = EventType.EVENT_TIMER_EVENT, source = "move", condition = "", action = "action_EVENT_TIMER_EVENT_1034", trigger_count = 0 },
	{ config_id = 1001035, name = "TIMER_EVENT_1035", event = EventType.EVENT_TIMER_EVENT, source = "checkheight", condition = "", action = "action_EVENT_TIMER_EVENT_1035", trigger_count = 0 },
	{ config_id = 1001036, name = "ENTER_REGION_1036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1036", forbid_guest = false },
	{ config_id = 1001037, name = "ANY_MONSTER_LIVE_1037", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1037", action = "action_EVENT_ANY_MONSTER_LIVE_1037" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1003, gadget_id = 70710079, pos = { x = 0.033, y = -9.525, z = -57.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	}
}

-- 视野组
sight_groups = {
	{ 1001, 1004, 1009, 1002, 1007, 1008 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		-- description = 留空,
		monsters = { },
		gadgets = { 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1029", "GADGET_STATE_CHANGE_1033", "TIMER_EVENT_1034", "TIMER_EVENT_1035", "ANY_MONSTER_LIVE_1037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 一、二阶段,
		monsters = { 1001 },
		gadgets = { 1002, 1007, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1005", "ANY_MONSTER_DIE_1006", "ANY_MONSTER_DIE_1029", "GADGET_STATE_CHANGE_1033", "TIMER_EVENT_1034", "TIMER_EVENT_1035", "ANY_MONSTER_LIVE_1037" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 三阶��?,
		monsters = { 1009 },
		gadgets = { 1008, 1028, 1030, 1031 },
		regions = { 1036 },
		triggers = { "ANY_MONSTER_DIE_1029", "GADGET_STATE_CHANGE_1033", "TIMER_EVENT_1034", "TIMER_EVENT_1035", "ENTER_REGION_1036", "ANY_MONSTER_LIVE_1037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	
	local uidList=ScriptLib.GetSceneUidList(context)
	if #uidList < 2 then
	ScriptLib.PlayCutScene(context, 220101003, 0)
	ScriptLib.CreateGroupTimerEvent(context, 220034001, "move", 2)
	else
	ScriptLib.CreateGroupTimerEvent(context, 220034001, "move", 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	--判断死亡怪物的configid是否为 1009
	if evt.param1 ~= 1009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	-- 将configid为 1028 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1028, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1033(context, evt)
	if 1028 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1033(context, evt)
	-- 创建id为1032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1034(context, evt)
	-- 延迟0.5秒刷怪
	ScriptLib.CreateMonster(context, { config_id = 1009, delay_time = 0.5 })
	
	ScriptLib.RefreshGroup(context, { group_id = 220034001, suite = 3, refresh_level_revise = 0, exclude_prev = false })
	ScriptLib.TransPlayerToPos(context, {uid_list =ScriptLib.GetSceneUidList(context), pos = {x=-0.2, y=-55.7, z=19.2}, radius = 2, rot = {x=0, y=180, z=0}}) 
	ScriptLib.CreateGroupTimerEvent(context, 220034001, "checkheight", 10)
	ScriptLib.ActivateDungeonCheckPoint(context, 3)
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1035(context, evt)
	local uid=ScriptLib.GetSceneUidList(context)
	for i=1,#uid do
	local entity=ScriptLib.GetAvatarEntityIdByUid(context, uid[i])
	local pos=ScriptLib.GetPosByEntityId(context, entity)
	if pos.y>= -20 then
	ScriptLib.MovePlayerToPos(context,  {uid_list ={uid[i]}, pos = {x=-0.2, y=-55.7, z=19.2}, radius = 2, rot = {x=0, y=180, z=0}}) 
	end
	end
	ScriptLib.CreateGroupTimerEvent(context, 220034001, "checkheight", 10)
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1036(context, evt)
	ScriptLib.ForceRefreshAuthorityByConfigId(context, 1009, context.uid)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1037(context, evt)
	--判断死亡怪物的configid是否为 1001
	if evt.param1 ~= 1001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1037(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220034001, "checkheight") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end