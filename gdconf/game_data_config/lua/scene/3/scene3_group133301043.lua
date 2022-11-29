-- 基础信息
local base_info = {
	group_id = 133301043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43001, gadget_id = 70290575, pos = { x = -1322.098, y = 178.113, z = 3161.240 }, rot = { x = 6.447, y = 358.144, z = 16.757 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 43003, gadget_id = 70310006, pos = { x = -1322.277, y = 178.660, z = 3162.794 }, rot = { x = 1.656, y = 262.233, z = 1.088 }, level = 30, area_id = 23 },
	{ config_id = 43004, gadget_id = 70290472, pos = { x = -1325.226, y = 178.658, z = 3163.405 }, rot = { x = 359.905, y = 276.123, z = 0.890 }, level = 30, area_id = 23 },
	{ config_id = 43007, gadget_id = 70290472, pos = { x = -1321.850, y = 178.535, z = 3160.721 }, rot = { x = 3.400, y = 129.515, z = 357.897 }, level = 30, area_id = 23 },
	{ config_id = 43010, gadget_id = 70290472, pos = { x = -1321.598, y = 178.537, z = 3160.782 }, rot = { x = 357.252, y = 266.345, z = 7.093 }, level = 30, area_id = 23 },
	{ config_id = 43011, gadget_id = 70290472, pos = { x = -1324.572, y = 178.743, z = 3163.531 }, rot = { x = 6.730, y = 128.817, z = 2.063 }, level = 30, area_id = 23 },
	{ config_id = 43012, gadget_id = 70290472, pos = { x = -1323.109, y = 178.978, z = 3165.716 }, rot = { x = 17.700, y = 189.028, z = 2.351 }, level = 30, area_id = 23 },
	{ config_id = 43013, gadget_id = 70220052, pos = { x = -1320.789, y = 178.856, z = 3160.542 }, rot = { x = 11.926, y = 220.113, z = 191.463 }, level = 30, area_id = 23 },
	{ config_id = 43015, gadget_id = 70220051, pos = { x = -1321.924, y = 178.374, z = 3158.614 }, rot = { x = 282.428, y = 233.191, z = 32.920 }, level = 30, area_id = 23 },
	{ config_id = 43016, gadget_id = 70220051, pos = { x = -1316.436, y = 179.479, z = 3161.539 }, rot = { x = 287.401, y = 278.663, z = 47.013 }, level = 30, area_id = 23 },
	{ config_id = 43017, gadget_id = 70220052, pos = { x = -1317.136, y = 179.069, z = 3158.963 }, rot = { x = 359.808, y = 359.664, z = 6.180 }, level = 30, area_id = 23 },
	{ config_id = 43018, gadget_id = 70220048, pos = { x = -1316.752, y = 179.100, z = 3163.400 }, rot = { x = 350.472, y = 74.512, z = 357.746 }, level = 30, area_id = 23 },
	{ config_id = 43019, gadget_id = 70220048, pos = { x = -1318.166, y = 178.928, z = 3164.949 }, rot = { x = 0.753, y = 288.980, z = 5.716 }, level = 30, area_id = 23 },
	{ config_id = 43021, gadget_id = 70300093, pos = { x = -1335.082, y = 178.973, z = 3168.547 }, rot = { x = 359.530, y = 36.846, z = 355.881 }, level = 30, area_id = 23 },
	{ config_id = 43022, gadget_id = 70300093, pos = { x = -1315.799, y = 179.579, z = 3160.456 }, rot = { x = 351.127, y = 45.933, z = 4.849 }, level = 30, area_id = 23 },
	{ config_id = 43023, gadget_id = 70220048, pos = { x = -1337.688, y = 176.584, z = 3154.404 }, rot = { x = 358.549, y = 301.607, z = 354.920 }, level = 30, area_id = 23 },
	{ config_id = 43024, gadget_id = 70220048, pos = { x = -1336.293, y = 176.500, z = 3152.500 }, rot = { x = 5.830, y = 60.508, z = 358.369 }, level = 30, area_id = 23 },
	{ config_id = 43025, gadget_id = 70220115, pos = { x = -1321.450, y = 178.625, z = 3160.163 }, rot = { x = 79.150, y = 337.331, z = 353.444 }, level = 30, area_id = 23 },
	{ config_id = 43026, gadget_id = 70220115, pos = { x = -1318.359, y = 180.059, z = 3157.037 }, rot = { x = 8.119, y = 262.559, z = 351.534 }, level = 30, area_id = 23 },
	{ config_id = 43027, gadget_id = 70220052, pos = { x = -1329.947, y = 180.709, z = 3172.495 }, rot = { x = 1.658, y = 64.914, z = 8.970 }, level = 30, isOneoff = true, area_id = 23 },
	{ config_id = 43028, gadget_id = 70220051, pos = { x = -1330.576, y = 180.779, z = 3171.986 }, rot = { x = 350.807, y = 251.549, z = 358.446 }, level = 30, isOneoff = true, area_id = 23 },
	{ config_id = 43029, gadget_id = 70220052, pos = { x = -1327.578, y = 180.547, z = 3173.191 }, rot = { x = 6.611, y = 160.371, z = 356.617 }, level = 30, isOneoff = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 43005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1324.120, y = 178.495, z = 3160.683 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1043005, name = "ENTER_REGION_43005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43005", action = "action_EVENT_ENTER_REGION_43005", trigger_count = 0 },
	{ config_id = 1043006, name = "GADGET_STATE_CHANGE_43006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_43006", action = "action_EVENT_GADGET_STATE_CHANGE_43006", trigger_count = 0 },
	{ config_id = 1043008, name = "QUEST_START_43008", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_43008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1043009, name = "GADGET_STATE_CHANGE_43009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_43009", action = "action_EVENT_GADGET_STATE_CHANGE_43009", trigger_count = 0 },
		{ config_id = 1043034, name = "QUEST_START_43034", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_43034", trigger_count = 0 }
	}
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
		gadgets = { 43001, 43004, 43007, 43010, 43011, 43012, 43013, 43015, 43016, 43017, 43018, 43019, 43021, 43022, 43023, 43024, 43025 },
		regions = { 43005 },
		triggers = { "ENTER_REGION_43005", "GADGET_STATE_CHANGE_43006", "QUEST_START_43008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 43003, 43026, 43027, 43028, 43029 },
		regions = { 43005 },
		triggers = { "ENTER_REGION_43005", "GADGET_STATE_CHANGE_43006", "QUEST_START_43008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_43005(context, evt)
	if evt.param1 ~= 43005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7300206") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_43006(context, evt)
	if 43003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_43006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7300212") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_43008(context, evt)
	-- 将configid为 43003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end