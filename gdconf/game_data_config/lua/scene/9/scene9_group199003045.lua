-- 基础信息
local base_info = {
	group_id = 199003045
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
	-- -
	{ config_id = 45001, gadget_id = 70690001, pos = { x = -721.552, y = 144.855, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45002, gadget_id = 70690013, pos = { x = -657.253, y = 123.751, z = -157.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45003, gadget_id = 70690013, pos = { x = -706.493, y = 131.877, z = -139.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45004, gadget_id = 70690010, pos = { x = -739.244, y = 120.635, z = -62.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45005, gadget_id = 70690001, pos = { x = -723.600, y = 155.682, z = -222.981 }, rot = { x = 334.170, y = 46.353, z = 11.962 }, level = 20, area_id = 403 },
	{ config_id = 45006, gadget_id = 70690001, pos = { x = -718.165, y = 159.317, z = -217.798 }, rot = { x = 334.170, y = 46.353, z = 11.962 }, level = 20, area_id = 403 },
	{ config_id = 45007, gadget_id = 70690001, pos = { x = -712.056, y = 163.404, z = -211.970 }, rot = { x = 334.170, y = 46.353, z = 11.962 }, level = 20, area_id = 403 },
	{ config_id = 45008, gadget_id = 70690001, pos = { x = -689.553, y = 172.588, z = -130.293 }, rot = { x = 343.479, y = 353.387, z = 358.468 }, level = 20, area_id = 403 },
	{ config_id = 45010, gadget_id = 70690001, pos = { x = -691.027, y = 176.630, z = -117.574 }, rot = { x = 343.479, y = 353.387, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45011, gadget_id = 70690010, pos = { x = -716.625, y = 120.473, z = -7.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45012, gadget_id = 70690001, pos = { x = -692.794, y = 181.180, z = -102.336 }, rot = { x = 343.479, y = 353.387, z = 0.000 }, level = 20, area_id = 403 },
	-- -
	{ config_id = 45013, gadget_id = 70690001, pos = { x = -721.552, y = 157.236, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45014, gadget_id = 70690001, pos = { x = -694.560, y = 182.694, z = -87.099 }, rot = { x = 343.479, y = 353.387, z = 0.000 }, level = 20, area_id = 403 },
	-- -
	{ config_id = 45015, gadget_id = 70690001, pos = { x = -721.552, y = 168.670, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45016, gadget_id = 70690001, pos = { x = -696.327, y = 187.244, z = -71.861 }, rot = { x = 343.479, y = 353.387, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 45017, gadget_id = 70690001, pos = { x = -697.425, y = 190.073, z = -62.388 }, rot = { x = 357.297, y = 353.387, z = 0.000 }, level = 20, area_id = 403 },
	-- -
	{ config_id = 45018, gadget_id = 70690001, pos = { x = -721.552, y = 177.390, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 },
	-- -
	{ config_id = 45019, gadget_id = 70690001, pos = { x = -721.552, y = 188.824, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 },
	-- -
	{ config_id = 45020, gadget_id = 70690001, pos = { x = -721.552, y = 197.204, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 },
	-- -
	{ config_id = 45021, gadget_id = 70690001, pos = { x = -721.552, y = 208.637, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 },
	-- -
	{ config_id = 45022, gadget_id = 70690001, pos = { x = -721.552, y = 220.121, z = -7.028 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045009, name = "GROUP_LOAD_45009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_45009", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
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
		gadgets = { 45001, 45002, 45003, 45004, 45005, 45006, 45007, 45008, 45010, 45011, 45012, 45013, 45014, 45015, 45016, 45017, 45018, 45019, 45020, 45021, 45022 },
		regions = { },
		triggers = { "GROUP_LOAD_45009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_45009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_45009(context, evt)
		  if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 2 then
	ScriptLib.RefreshGroup(context, { group_id = 199003045, suite = 1 }) 
		  else
			ScriptLib.RefreshGroup(context, { group_id = 199003045, suite = 2 }) 
			end
	return 0
end