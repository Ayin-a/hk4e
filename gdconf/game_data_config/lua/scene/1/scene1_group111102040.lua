-- 基础信息
local base_info = {
	group_id = 111102040
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
	{ config_id = 40001, gadget_id = 70950057, pos = { x = 1937.093, y = 196.533, z = -1212.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 40002, gadget_id = 70310011, pos = { x = 1935.105, y = 201.695, z = -1216.115 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 40003, gadget_id = 70310011, pos = { x = 1934.596, y = 200.329, z = -1212.463 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 40004, gadget_id = 70310011, pos = { x = 1937.431, y = 200.657, z = -1210.193 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 40005, gadget_id = 70310011, pos = { x = 1939.067, y = 199.451, z = -1215.026 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 40006, gadget_id = 70310011, pos = { x = 1940.956, y = 201.419, z = -1211.220 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 40009, gadget_id = 70950145, pos = { x = 1937.025, y = 199.893, z = -1212.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40010, gadget_id = 70310001, pos = { x = 1943.592, y = 196.655, z = -1216.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40012, gadget_id = 70900007, pos = { x = 1936.993, y = 196.517, z = -1212.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40013, gadget_id = 70310001, pos = { x = 1941.282, y = 196.486, z = -1219.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40014, gadget_id = 70310001, pos = { x = 1941.281, y = 196.591, z = -1216.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40015, gadget_id = 70310001, pos = { x = 1943.648, y = 196.599, z = -1219.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40016, gadget_id = 70310011, pos = { x = 1946.111, y = 196.831, z = -1216.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40017, gadget_id = 70310011, pos = { x = 1947.018, y = 196.902, z = -1212.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40018, gadget_id = 70310011, pos = { x = 1945.987, y = 196.836, z = -1208.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40019, gadget_id = 70310011, pos = { x = 1941.054, y = 196.707, z = -1203.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40020, gadget_id = 70310011, pos = { x = 1937.214, y = 196.547, z = -1202.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40021, gadget_id = 70310011, pos = { x = 1933.538, y = 196.335, z = -1203.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40022, gadget_id = 70310011, pos = { x = 1930.448, y = 196.011, z = -1205.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40023, gadget_id = 70310011, pos = { x = 1928.354, y = 195.927, z = -1207.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40024, gadget_id = 70310011, pos = { x = 1927.093, y = 195.961, z = -1212.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40025, gadget_id = 70310011, pos = { x = 1928.009, y = 195.944, z = -1216.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40026, gadget_id = 70310011, pos = { x = 1929.666, y = 195.889, z = -1219.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40027, gadget_id = 70310011, pos = { x = 1932.704, y = 195.902, z = -1221.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40028, gadget_id = 70310011, pos = { x = 1936.585, y = 195.996, z = -1222.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40029, gadget_id = 70310011, pos = { x = 1944.025, y = 196.523, z = -1219.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40030, gadget_id = 70310011, pos = { x = 1940.632, y = 196.186, z = -1221.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 40031, gadget_id = 70310011, pos = { x = 1943.999, y = 196.811, z = -1205.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 入圈
	{ config_id = 40008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1936.723, y = 196.596, z = -1212.918 } },
	-- 进入正确位置
	{ config_id = 40011, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1942.450, y = 196.692, z = -1218.003 } }
}

-- 触发器
triggers = {
	{ config_id = 1040007, name = "GADGET_STATE_CHANGE_40007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40007", action = "action_EVENT_GADGET_STATE_CHANGE_40007", trigger_count = 0 },
	-- 入圈
	{ config_id = 1040008, name = "ENTER_REGION_40008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_40008", trigger_count = 0 },
	-- 进入正确位置
	{ config_id = 1040011, name = "ENTER_REGION_40011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_40011", trigger_count = 0 }
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
		gadgets = { 40001, 40002, 40003, 40004, 40005, 40006, 40009, 40010, 40012, 40013, 40014, 40015, 40016, 40017, 40018, 40019, 40020, 40021, 40022, 40023, 40024, 40025, 40026, 40027, 40028, 40029, 40030, 40031 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_40007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 40008, 40011 },
		triggers = { "ENTER_REGION_40008", "ENTER_REGION_40011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111102040, 40002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111102040, 40003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111102040, 40004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111102040, 40005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111102040, 40006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102040, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_40008(context, evt)
	-- 触发镜头注目，注目位置为坐标（1937.025，199.8929，-1212.698），持续时间为60秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1937.025, y=199.8929, z=-1212.698}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 60, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_40011(context, evt)
	-- 将configid为 40012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end