-- 基础信息
local base_info = {
	group_id = 133225169
}

-- DEFS_MISCS
defs = {
        group_id = 133225169,

        decal_opt_map = { --操作台和decal的对应关系 [操作台ID]={decal_id = decal的configid, index = 需要激活的顺序}
                [169008] = {decal_id = 169001 , index = 201},
                [169009] = {decal_id = 169002 , index = 202},
                [169010] = {decal_id = 169003 , index = 201},
                [169011] = {decal_id = 169004 , index = 201},
                [169012] = {decal_id = 169005 , index = 202},
                [169013] = {decal_id = 169007 , index = 202},
	[169017] = {decal_id = 169016 , index = 201},
        },
        suite_decals = 2, --有多少个Decal
        suite_opts = 3, --操作台对应的Suite
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
	{ config_id = 169001, gadget_id = 70230063, pos = { x = -6344.775, y = 301.371, z = -2688.093 }, rot = { x = 77.505, y = 357.316, z = 234.224 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 169002, gadget_id = 70230060, pos = { x = -6340.936, y = 307.284, z = -2672.860 }, rot = { x = 75.037, y = 9.595, z = 237.588 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 169003, gadget_id = 70230061, pos = { x = -6348.298, y = 287.806, z = -2691.182 }, rot = { x = 85.015, y = 288.714, z = 168.229 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 169004, gadget_id = 70230059, pos = { x = -6340.017, y = 272.354, z = -2666.083 }, rot = { x = 80.559, y = 256.423, z = 139.825 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 169005, gadget_id = 70230065, pos = { x = -6327.605, y = 265.786, z = -2647.549 }, rot = { x = 78.549, y = 282.850, z = 92.062 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 169006, gadget_id = 70211121, pos = { x = -6336.068, y = 244.727, z = -2651.257 }, rot = { x = 0.307, y = 147.339, z = 356.820 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 169007, gadget_id = 70230064, pos = { x = -6311.737, y = 251.654, z = -2649.434 }, rot = { x = 78.549, y = 246.661, z = 84.292 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 169008, gadget_id = 70360001, pos = { x = -6344.598, y = 301.713, z = -2686.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 169009, gadget_id = 70360001, pos = { x = -6341.123, y = 307.115, z = -2672.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 169010, gadget_id = 70360001, pos = { x = -6348.278, y = 287.551, z = -2690.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 169011, gadget_id = 70360001, pos = { x = -6339.939, y = 272.263, z = -2665.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 169012, gadget_id = 70360001, pos = { x = -6326.563, y = 265.605, z = -2647.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 169013, gadget_id = 70360001, pos = { x = -6310.762, y = 251.342, z = -2649.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 169016, gadget_id = 70230062, pos = { x = -6345.944, y = 249.291, z = -2652.666 }, rot = { x = 78.549, y = 226.683, z = 84.292 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 169017, gadget_id = 70360001, pos = { x = -6344.231, y = 252.151, z = -2651.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 169014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6353.359, y = 234.484, z = -2663.154 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1169015, name = "VARIABLE_CHANGE_169015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_169015", action = "action_EVENT_VARIABLE_CHANGE_169015" },
	-- 创建保底
	{ config_id = 1169018, name = "GROUP_LOAD_169018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_169018", action = "action_EVENT_GROUP_LOAD_169018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isNeedNotify", value = 1, no_refresh = false },
	{ config_id = 2, name = "Finished", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { 169014 },
		triggers = { "GROUP_LOAD_169018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 169001, 169002, 169003, 169004, 169005, 169007, 169016 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_169015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 169008, 169009, 169010, 169011, 169012, 169013, 169017 },
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
function condition_EVENT_VARIABLE_CHANGE_169015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_169015(context, evt)
	-- 创建id为169006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 169006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_169018(context, evt)
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_169018(context, evt)
	-- 创建id为169006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 169006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_2/DecalDecode"