-- 基础信息
local base_info = {
	group_id = 133223451
}

-- DEFS_MISCS
defs = {
        group_id = 133223451,

        decal_opt_map = { --操作台和decal的对应关系 [操作台ID]={decal_id = decal的configid, index = 需要激活的顺序}
                [451008] = {decal_id = 451007 , index = 201},
                [451009] = {decal_id = 451004 , index = 202},
                [451014] = {decal_id = 451003 , index = 202},
                [451023] = {decal_id = 451005 , index = 201},
                [451020] = {decal_id = 451002 , index = 201},
                [451017] = {decal_id = 451001 , index = 201},
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
	{ config_id = 451001, gadget_id = 70230063, pos = { x = -5986.602, y = 244.003, z = -2534.418 }, rot = { x = 77.505, y = 49.076, z = 234.224 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 451002, gadget_id = 70230060, pos = { x = -5972.502, y = 246.897, z = -2546.954 }, rot = { x = 75.037, y = 54.181, z = 237.588 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 451003, gadget_id = 70230061, pos = { x = -5992.926, y = 250.537, z = -2537.583 }, rot = { x = 66.250, y = 349.608, z = 192.160 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 451004, gadget_id = 70230059, pos = { x = -5998.155, y = 240.361, z = -2537.134 }, rot = { x = 80.559, y = 256.423, z = 83.552 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 451005, gadget_id = 70230065, pos = { x = -5978.981, y = 254.334, z = -2537.998 }, rot = { x = 78.549, y = 282.850, z = 84.292 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 451006, gadget_id = 70211111, pos = { x = -5989.001, y = 238.418, z = -2536.104 }, rot = { x = 7.761, y = 150.754, z = 338.972 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 451007, gadget_id = 70230064, pos = { x = -6001.078, y = 242.276, z = -2547.772 }, rot = { x = 78.549, y = 226.683, z = 84.292 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 451008, gadget_id = 70360001, pos = { x = -6000.380, y = 242.108, z = -2546.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 451009, gadget_id = 70360001, pos = { x = -5998.203, y = 240.073, z = -2537.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 451014, gadget_id = 70360001, pos = { x = -5992.815, y = 250.151, z = -2537.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 451017, gadget_id = 70360001, pos = { x = -5985.613, y = 244.101, z = -2534.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 451020, gadget_id = 70360001, pos = { x = -5972.508, y = 246.785, z = -2546.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 451023, gadget_id = 70360001, pos = { x = -5978.094, y = 254.119, z = -2538.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 451010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5993.497, y = 237.922, z = -2534.640 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1451011, name = "VARIABLE_CHANGE_451011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_451011", action = "action_EVENT_VARIABLE_CHANGE_451011" },
	-- 创建保底
	{ config_id = 1451012, name = "GROUP_LOAD_451012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_451012", action = "action_EVENT_GROUP_LOAD_451012", trigger_count = 0 }
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
		regions = { 451010 },
		triggers = { "GROUP_LOAD_451012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 451001, 451002, 451003, 451004, 451005, 451007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_451011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 451008, 451009, 451014, 451017, 451020, 451023 },
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
function condition_EVENT_VARIABLE_CHANGE_451011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_451011(context, evt)
	-- 创建id为451006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 451006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_451012(context, evt)
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_451012(context, evt)
	-- 创建id为451006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 451006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_2/DecalDecode"