-- 基础信息
local base_info = {
	group_id = 133106284
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 284001, monster_id = 25010201, pos = { x = -499.776, y = 235.994, z = 1282.554 }, rot = { x = 0.000, y = 81.468, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 284002, monster_id = 25010201, pos = { x = -500.239, y = 236.149, z = 1268.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 284003, monster_id = 25010201, pos = { x = -484.947, y = 236.729, z = 1277.943 }, rot = { x = 0.000, y = 230.043, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 284004, monster_id = 25010201, pos = { x = -485.017, y = 236.894, z = 1270.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 284005, monster_id = 25020201, pos = { x = -489.982, y = 236.879, z = 1272.229 }, rot = { x = 0.000, y = 127.955, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 284006, monster_id = 25020201, pos = { x = -499.075, y = 236.246, z = 1275.331 }, rot = { x = 0.000, y = 274.544, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 284007, monster_id = 25030201, pos = { x = -496.062, y = 236.326, z = 1276.065 }, rot = { x = 0.000, y = 274.136, z = 0.000 }, level = 32, drop_tag = "盗宝团", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 284008, gadget_id = 70710113, pos = { x = -492.497, y = 236.283, z = 1274.804 }, rot = { x = 0.000, y = 277.088, z = 0.000 }, level = 32, persistent = true, interact_id = 6, area_id = 8 },
	{ config_id = 284012, gadget_id = 70310006, pos = { x = -497.087, y = 236.345, z = 1267.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 284013, gadget_id = 70310001, pos = { x = -496.390, y = 236.304, z = 1270.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 284014, gadget_id = 70310001, pos = { x = -480.020, y = 236.770, z = 1273.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 284015, gadget_id = 70310001, pos = { x = -495.357, y = 236.174, z = 1279.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 284018, gadget_id = 70211002, pos = { x = -495.038, y = 236.430, z = 1267.413 }, rot = { x = 0.000, y = 245.089, z = 0.000 }, level = 26, chest_drop_id = 1001907, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 284009, shape = RegionShape.SPHERE, radius = 13.2, pos = { x = -492.993, y = 236.763, z = 1272.853 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1284009, name = "ENTER_REGION_284009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284009", action = "action_EVENT_ENTER_REGION_284009" },
	{ config_id = 1284010, name = "GADGET_STATE_CHANGE_284010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284010", action = "action_EVENT_GADGET_STATE_CHANGE_284010" },
	{ config_id = 1284011, name = "ANY_MONSTER_DIE_284011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_284011", action = "action_EVENT_ANY_MONSTER_DIE_284011" },
	{ config_id = 1284016, name = "GADGET_CREATE_284016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_284016", action = "action_EVENT_GADGET_CREATE_284016", trigger_count = 0 }
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
		monsters = { 284001, 284002, 284003, 284004, 284005, 284006, 284007 },
		gadgets = { 284008, 284012, 284013, 284014, 284015, 284018 },
		regions = { 284009 },
		triggers = { "ENTER_REGION_284009", "GADGET_STATE_CHANGE_284010", "ANY_MONSTER_DIE_284011", "GADGET_CREATE_284016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_284009(context, evt)
	if evt.param1 ~= 284009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_284009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155507_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 31060101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31060101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284010(context, evt)
	if 284008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_284010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155512_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_284011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_284011(context, evt)
	-- 将configid为 284018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155509_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_284016(context, evt)
	if 284008 ~= evt.param1 then 
		return false
	end
	local state = ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1)
	        if state == 201 or state == 202  then
	                return true
	        end
	        
	        return false
end

-- 触发操作
function action_EVENT_GADGET_CREATE_284016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155512_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7155509_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end