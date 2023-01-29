-- 基础信息
local base_info = {
	group_id = 199002029
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 199002029,
	--起始操作台configID
	start_operator = 29006,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
		29001, 29002, 29003, 29004, 29005
	},
	--行动序列
	actions = 
	{
   		[1] = { config_id = 29001, reminder_id = 1111099, point_array = 0, point_id_list = 0, duration = 13},
   		[2] = { config_id = 29002, reminder_id = 1111101, point_array = 900200107, point_id_list = {1,2,3,4,5}, duration = 5},
   		[3] = { config_id = 29003, reminder_id = 1111102, point_array = 900200108, point_id_list = {1,2,3,4}, duration = 7},
   		[4] = { config_id = 29004, reminder_id = 1111103, point_array = 900200109, point_id_list = {1,2,3}, duration = 6},
   		[5] = { config_id = 29005, reminder_id = 1111104, point_array = 900200110, point_id_list = {1,2,3}, duration = 6},
   		[6] = { config_id = 29004, reminder_id = 1111105, point_array = 900200111, point_id_list = {1,2}, duration = 3},
   		[7] = { config_id = 29002, reminder_id = 1111106, point_array = 900200112, point_id_list = {1,2}, duration = 9},
   		[8] = { config_id = 29003, reminder_id = 1111108, point_array = 900200113, point_id_list = {1,2}, duration = 4},
   		[9] = { config_id = 29005, reminder_id = 1111109, point_array = 0, point_id_list = 0, duration = 6},
   		[10] = { config_id = 29004, reminder_id = 1111110, point_array = 900200114, point_id_list = {1,2}, duration = 6},
   		[11] = { config_id = 29001, reminder_id = 1111111, point_array = 0, point_id_list = 0, duration = 12},



	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   
		2
	},
	--真正的凶手对应哪个操作台config_id
	answer = 29008,
	--玩法范围，主机出圈则重置
	play_region = 29011,

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
	-- 提问者
	[29001] = { config_id = 29001, gadget_id = 70310175, pos = { x = 620.523, y = 121.894, z = -546.773 }, rot = { x = 0.000, y = 64.115, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 细心的守卫C
	[29002] = { config_id = 29002, gadget_id = 70310257, pos = { x = 620.688, y = 121.915, z = -543.323 }, rot = { x = 0.000, y = 56.245, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 冷静的守卫D
	[29003] = { config_id = 29003, gadget_id = 70310257, pos = { x = 620.269, y = 121.807, z = -538.179 }, rot = { x = 0.000, y = 117.743, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 阴沉的守卫A
	[29004] = { config_id = 29004, gadget_id = 70310259, pos = { x = 625.785, y = 121.679, z = -545.071 }, rot = { x = 0.000, y = 136.081, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 暴躁的守卫B
	[29005] = { config_id = 29005, gadget_id = 70310259, pos = { x = 625.445, y = 121.773, z = -539.574 }, rot = { x = 0.000, y = 24.512, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 开始案件
	[29006] = { config_id = 29006, gadget_id = 70360001, pos = { x = 620.523, y = 121.944, z = -546.773 }, rot = { x = 0.000, y = 64.115, z = 0.000 }, level = 20, worktop_config = { init_options = { 401 } }, area_id = 401 },
	-- 细心的守卫操作台
	[29007] = { config_id = 29007, gadget_id = 70360001, pos = { x = 622.357, y = 121.915, z = -542.366 }, rot = { x = 0.000, y = 74.118, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 冷静的守卫操作台
	[29008] = { config_id = 29008, gadget_id = 70360001, pos = { x = 622.796, y = 121.807, z = -540.298 }, rot = { x = 0.000, y = 138.422, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 阴沉的守卫操作台
	[29009] = { config_id = 29009, gadget_id = 70360001, pos = { x = 624.297, y = 121.807, z = -542.882 }, rot = { x = 0.000, y = 311.773, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	-- 暴躁的守卫操作台
	[29010] = { config_id = 29010, gadget_id = 70360001, pos = { x = 625.062, y = 121.807, z = -540.578 }, rot = { x = 0.000, y = 200.911, z = 0.000 }, level = 20, worktop_config = { init_options = { 402 } }, area_id = 401 },
	[29012] = { config_id = 29012, gadget_id = 70211102, pos = { x = 622.087, y = 121.895, z = -547.564 }, rot = { x = 0.000, y = 39.475, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
	-- 离开区域重置
	[29011] = { config_id = 29011, shape = RegionShape.SPHERE, radius = 20, pos = { x = 623.956, y = 121.807, z = -542.580 }, area_id = 401 },
	[29015] = { config_id = 29015, shape = RegionShape.SPHERE, radius = 4, pos = { x = 622.361, y = 122.169, z = -546.961 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1029013, name = "VARIABLE_CHANGE_29013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_29013", action = "action_EVENT_VARIABLE_CHANGE_29013", trigger_count = 0 },
	{ config_id = 1029014, name = "GROUP_LOAD_29014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_29014", action = "action_EVENT_GROUP_LOAD_29014", trigger_count = 0 },
	{ config_id = 1029015, name = "ENTER_REGION_29015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_29015", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006, 29012 },
		regions = { 29011, 29015 },
		triggers = { "VARIABLE_CHANGE_29013", "GROUP_LOAD_29014", "ENTER_REGION_29015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 29007, 29008, 29009, 29010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29012 },
		regions = { },
		triggers = { "GROUP_LOAD_29014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_29013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29013(context, evt)
	-- 将configid为 29012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199002029, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_29014(context, evt)
	-- 判断变量"theatre_state"为3
	if ScriptLib.GetGroupVariableValue(context, "theatre_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_29014(context, evt)
	-- 将configid为 29012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_29015(context, evt)
	if 29015 == evt.param1 then
	else
		if 0 == ScriptLib.TryRecordActivityPushTips(context, 2014017) then
			ScriptLib.TryRecordActivityPushTips(context, 2014017)
			
			ScriptLib.ShowClientTutorial(context, 1187, {})
		end
	end
	
	return 0
end

require "V2_8/CrowTheatre_Whodunit"