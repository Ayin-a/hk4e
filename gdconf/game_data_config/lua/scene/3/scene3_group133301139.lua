-- 基础信息
local base_info = {
	group_id = 133301139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139017, monster_id = 24010101, pos = { x = -603.254, y = 34.311, z = 3803.777 }, rot = { x = 0.000, y = 119.969, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117, 6116 }, pose_id = 100, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139001, gadget_id = 70310007, pos = { x = -614.784, y = 39.207, z = 3811.464 }, rot = { x = 354.814, y = 81.286, z = 351.647 }, level = 33, area_id = 25 },
	{ config_id = 139002, gadget_id = 70310007, pos = { x = -600.303, y = 39.218, z = 3768.604 }, rot = { x = 356.272, y = 62.431, z = 353.930 }, level = 33, area_id = 25 },
	{ config_id = 139003, gadget_id = 70310007, pos = { x = -584.800, y = 37.570, z = 3765.400 }, rot = { x = 331.702, y = 237.935, z = 3.444 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139004, gadget_id = 70310007, pos = { x = -584.190, y = 34.000, z = 3795.780 }, rot = { x = 350.244, y = 301.806, z = 3.059 }, level = 33, area_id = 25 },
	{ config_id = 139005, gadget_id = 70310007, pos = { x = -579.460, y = 35.720, z = 3815.550 }, rot = { x = 350.715, y = 293.685, z = 346.471 }, level = 33, area_id = 25 },
	{ config_id = 139006, gadget_id = 70310007, pos = { x = -585.961, y = 36.678, z = 3833.710 }, rot = { x = 8.679, y = 158.477, z = 352.696 }, level = 33, area_id = 25 },
	{ config_id = 139007, gadget_id = 70310007, pos = { x = -592.157, y = 34.117, z = 3828.104 }, rot = { x = 345.306, y = 78.854, z = 348.695 }, level = 33, area_id = 25 },
	{ config_id = 139008, gadget_id = 70310191, pos = { x = -601.695, y = 33.563, z = 3797.578 }, rot = { x = 16.886, y = 279.907, z = 7.190 }, level = 33, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139009, gadget_id = 70310192, pos = { x = -573.579, y = 41.586, z = 3791.306 }, rot = { x = 0.000, y = 280.430, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139010, gadget_id = 70310192, pos = { x = -581.952, y = 36.742, z = 3795.604 }, rot = { x = 316.085, y = 326.770, z = 146.070 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139013, gadget_id = 70310192, pos = { x = -611.986, y = 43.670, z = 3813.966 }, rot = { x = 71.231, y = 147.876, z = 258.078 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139015, gadget_id = 70310191, pos = { x = -570.196, y = 38.936, z = 3810.336 }, rot = { x = 10.883, y = 106.878, z = 357.840 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139016, gadget_id = 70360001, pos = { x = -594.006, y = 33.704, z = 3785.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139019, gadget_id = 70310223, pos = { x = -594.710, y = 37.020, z = 3803.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, start_route = false, persistent = true, area_id = 25 },
	{ config_id = 139022, gadget_id = 70310191, pos = { x = -569.542, y = 31.971, z = 3771.132 }, rot = { x = 20.111, y = 128.361, z = 356.725 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139028, gadget_id = 70310193, pos = { x = -592.937, y = 33.586, z = 3808.597 }, rot = { x = 344.782, y = 51.285, z = 356.485 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139035, gadget_id = 70310192, pos = { x = -592.412, y = 35.919, z = 3827.683 }, rot = { x = 297.364, y = 51.269, z = 7.664 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139037, gadget_id = 70310192, pos = { x = -583.759, y = 36.041, z = 3796.019 }, rot = { x = 333.989, y = 266.460, z = 70.242 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139038, gadget_id = 70310192, pos = { x = -577.429, y = 38.413, z = 3816.274 }, rot = { x = 336.374, y = 47.514, z = 190.164 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 139043, gadget_id = 70310192, pos = { x = -614.755, y = 41.763, z = 3810.816 }, rot = { x = 18.510, y = 76.256, z = 165.517 }, level = 33, isOneoff = true, persistent = true, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 对话开始4s后干掉17机器人
	{ config_id = 1139011, name = "TIME_AXIS_PASS_139011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_139011", action = "action_EVENT_TIME_AXIS_PASS_139011", trigger_count = 0 },
	-- 对话开始干掉所有飞弹
	{ config_id = 1139012, name = "QUEST_START_139012", event = EventType.EVENT_QUEST_START, source = "7303610", condition = "", action = "action_EVENT_QUEST_START_139012", trigger_count = 0 },
	-- 对话开始5s后干掉28核心
	{ config_id = 1139018, name = "TIME_AXIS_PASS_139018", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_139018", action = "action_EVENT_TIME_AXIS_PASS_139018", trigger_count = 0 },
	{ config_id = 1139021, name = "QUEST_START_139021", event = EventType.EVENT_QUEST_START, source = "7303614", condition = "", action = "action_EVENT_QUEST_START_139021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 139014, gadget_id = 70310191, pos = { x = -583.106, y = 38.387, z = 3837.865 }, rot = { x = 13.814, y = 184.890, z = 12.619 }, level = 33, isOneoff = true, persistent = true, area_id = 25 }
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
		monsters = { 139017 },
		gadgets = { 139001, 139002, 139003, 139004, 139005, 139006, 139007, 139008, 139009, 139010, 139013, 139015, 139016, 139019, 139022, 139028, 139035, 139037, 139038, 139043 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_139011", "QUEST_START_139012", "TIME_AXIS_PASS_139018", "QUEST_START_139021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_TIME_AXIS_PASS_139011(context, evt)
	if "aranaboom1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_139011(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133301139, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_139012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139037 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139038 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139043 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"aranaboom1"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "aranaboom1", {4}, false)
	
	
	-- 创建标识为"aranaboom2"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "aranaboom2", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_139018(context, evt)
	if "aranaboom2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_139018(context, evt)
	-- 将configid为 139028 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139028, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_139021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldStandard"