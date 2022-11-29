-- 基础信息
local base_info = {
	group_id = 133106456
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
	{ config_id = 456001, gadget_id = 70360001, pos = { x = -695.124, y = 100.967, z = 1844.176 }, rot = { x = 0.000, y = 224.310, z = 5.522 }, level = 36, persistent = true, worktop_config = { is_persistent = true, init_options = { 7 } }, area_id = 19 },
	{ config_id = 456003, gadget_id = 70690033, pos = { x = -713.872, y = 37.630, z = 1853.887 }, rot = { x = 0.000, y = 204.387, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 456002, shape = RegionShape.SPHERE, radius = 40, pos = { x = -716.671, y = 6.318, z = 1856.093 }, area_id = 19, team_ability_group_list = { "CYJY_Enter_TransPlayer_Handle" } }
}

-- 触发器
triggers = {
	{ config_id = 1456005, name = "SELECT_OPTION_456005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_456005", action = "action_EVENT_SELECT_OPTION_456005", trigger_count = 0 }
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
		gadgets = { 456003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 456001 },
		regions = { 456002 },
		triggers = { "SELECT_OPTION_456005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_456005(context, evt)
	-- 判断是gadgetid 456001 option_id 7
	if 456001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_456005(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=1021, y= 1086, z=880}, radius = 2, rot = {x=0, y=250.4503, z=0},scene_id=6}) 
	return 0
end

require "V2_6/CYJY_Enter_Trans_Player"