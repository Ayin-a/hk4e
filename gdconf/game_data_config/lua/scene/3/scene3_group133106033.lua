-- 基础信息
local base_info = {
	group_id = 133106033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75, monster_id = 21010101, pos = { x = -730.024, y = 166.709, z = 874.421 }, rot = { x = 0.000, y = 43.427, z = 0.000 }, level = 28, drop_tag = "丘丘人", pose_id = 9016, area_id = 8 },
	{ config_id = 76, monster_id = 21010101, pos = { x = -734.106, y = 166.175, z = 874.072 }, rot = { x = 0.000, y = 94.919, z = 0.000 }, level = 28, drop_tag = "丘丘人", pose_id = 9016, area_id = 8 },
	{ config_id = 77, monster_id = 21010101, pos = { x = -728.391, y = 167.558, z = 872.473 }, rot = { x = 0.000, y = 16.485, z = 0.000 }, level = 28, drop_tag = "丘丘人", pose_id = 9016, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85, gadget_id = 70220014, pos = { x = -728.405, y = 167.303, z = 873.330 }, rot = { x = 16.314, y = 327.684, z = 354.917 }, level = 32, area_id = 8 },
	{ config_id = 88, gadget_id = 70220014, pos = { x = -732.102, y = 166.147, z = 875.587 }, rot = { x = 15.010, y = 328.633, z = 1.082 }, level = 32, area_id = 8 },
	{ config_id = 89, gadget_id = 70220013, pos = { x = -727.875, y = 166.155, z = 877.741 }, rot = { x = 13.372, y = 308.998, z = 350.640 }, level = 32, area_id = 8 },
	{ config_id = 166, gadget_id = 70211001, pos = { x = -728.921, y = 166.647, z = 875.399 }, rot = { x = 355.580, y = 218.882, z = 348.566 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000040, name = "ANY_GADGET_DIE_40", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40", action = "action_EVENT_ANY_GADGET_DIE_40" }
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
		monsters = { 75, 76, 77 },
		gadgets = { 85, 88, 89, 166 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40(context, evt)
	if 89 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40(context, evt)
	-- 创建id为166的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 166 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end