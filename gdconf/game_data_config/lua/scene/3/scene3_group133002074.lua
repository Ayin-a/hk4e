-- 基础信息
local base_info = {
	group_id = 133002074
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
	{ config_id = 1019, gadget_id = 70690001, pos = { x = 1616.647, y = 233.505, z = -500.503 }, rot = { x = 90.000, y = 16.707, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 1021, gadget_id = 70690001, pos = { x = 1616.722, y = 247.694, z = -492.147 }, rot = { x = 338.300, y = 16.410, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 1022, gadget_id = 70690001, pos = { x = 1619.049, y = 251.977, z = -480.852 }, rot = { x = 17.900, y = 196.300, z = 180.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 1023, gadget_id = 70690001, pos = { x = 1621.893, y = 256.504, z = -467.018 }, rot = { x = 327.900, y = 6.050, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 2168, gadget_id = 70690001, pos = { x = 1617.034, y = 240.357, z = -500.985 }, rot = { x = 90.000, y = 16.707, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 74001, gadget_id = 70900039, pos = { x = 1614.820, y = 229.382, z = -506.982 }, rot = { x = 4.206, y = 27.100, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 74003, gadget_id = 70500000, pos = { x = 1627.557, y = 266.352, z = -440.195 }, rot = { x = 0.000, y = 123.547, z = 0.000 }, level = 10, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074002, name = "GADGET_STATE_CHANGE_74002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74002", action = "action_EVENT_GADGET_STATE_CHANGE_74002", trigger_count = 0 },
	{ config_id = 1074004, name = "GATHER_74004", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_74004", action = "action_EVENT_GATHER_74004" }
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
		gadgets = { 74001, 74003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_74002", "GATHER_74004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1019, 1021, 1022, 1023, 2168 },
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
function condition_EVENT_GADGET_STATE_CHANGE_74002(context, evt)
	if 74001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_74002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002074, 2)
	
	-- 触发镜头注目，注目位置为坐标（1627，266，-440），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1627, y=266, z=-440}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_74004(context, evt)
	if 74003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_74004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002074, 2)
	
	return 0
end