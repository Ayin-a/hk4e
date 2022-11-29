-- 基础信息
local base_info = {
	group_id = 133103278
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 133103278,
	gadget_1 = 278001,
	gadget_2 = 278002,
	gadget_3 = 278003,
	gadget_4 = 278005,
	gadget_chest = 278004
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
	{ config_id = 278001, gadget_id = 70220008, pos = { x = 792.330, y = 322.393, z = 1425.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 278002, gadget_id = 70220008, pos = { x = 789.425, y = 322.841, z = 1427.777 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 278003, gadget_id = 70220008, pos = { x = 793.806, y = 321.810, z = 1422.647 }, rot = { x = 0.000, y = 99.606, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 278004, gadget_id = 70211111, pos = { x = 787.458, y = 323.656, z = 1430.078 }, rot = { x = 358.918, y = 112.886, z = 355.665 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1278006, name = "ANY_GADGET_DIE_278006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_278006", action = "action_EVENT_ANY_GADGET_DIE_278006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 278001, 278002, 278003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_278006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_278006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133103278}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_278006(context, evt)
	-- 创建id为278004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 278004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end