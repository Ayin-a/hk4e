-- 基础信息
local base_info = {
	group_id = 133315028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28012, monster_id = 28060202, pos = { x = -131.123, y = 200.000, z = 3046.699 }, rot = { x = 0.000, y = 171.106, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, title_id = 10109, special_name_id = 10142, area_id = 22 }
}

-- NPC
npcs = {
	{ config_id = 28015, npc_id = 20769, pos = { x = -122.138, y = 201.549, z = 3031.452 }, rot = { x = 0.000, y = 197.132, z = 0.000 }, area_id = 22 }
}

-- 装置
gadgets = {
	{ config_id = 28002, gadget_id = 70710111, pos = { x = -122.521, y = 200.814, z = 3034.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 131, area_id = 22 },
	{ config_id = 28005, gadget_id = 71700432, pos = { x = -122.622, y = 200.154, z = 3034.071 }, rot = { x = 2.026, y = 2.168, z = 353.833 }, level = 27, area_id = 22 },
	{ config_id = 28013, gadget_id = 70290376, pos = { x = -122.133, y = 200.255, z = 3031.403 }, rot = { x = 0.000, y = 191.584, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 28017, gadget_id = 70360129, pos = { x = -128.395, y = 200.000, z = 3056.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 28001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -131.631, y = 200.000, z = 3048.559 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1028001, name = "ENTER_REGION_28001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28001", action = "action_EVENT_ENTER_REGION_28001" },
	{ config_id = 1028003, name = "GADGET_STATE_CHANGE_28003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28003", action = "action_EVENT_GADGET_STATE_CHANGE_28003", trigger_count = 0 },
	{ config_id = 1028004, name = "ANY_MONSTER_DIE_28004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28004", action = "action_EVENT_ANY_MONSTER_DIE_28004" }
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
		gadgets = { 28005, 28013 },
		regions = { },
		triggers = { },
		npcs = { 28015 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 28012 },
		gadgets = { 28005, 28013, 28017 },
		regions = { 28001 },
		triggers = { "ENTER_REGION_28001", "ANY_MONSTER_DIE_28004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 28002, 28005, 28013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_28003" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 28005, 28013 },
		regions = { },
		triggers = { },
		npcs = { 28015 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_28001(context, evt)
	if evt.param1 ~= 28001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28001(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-132, y=200, z=3058}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-132, y=200, z=3058}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 33150027 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28003(context, evt)
	if 28002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28003(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28004(context, evt)
	--判断死亡怪物的configid是否为 28012
	if evt.param1 ~= 28012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7307605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315028, 3)
	
	-- 将configid为 28017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end