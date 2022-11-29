-- 基础信息
local base_info = {
	group_id = 133103456
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 456003, monster_id = 28050102, pos = { x = 890.394, y = 325.378, z = 1503.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 456001, gadget_id = 70330021, pos = { x = 891.615, y = 323.838, z = 1502.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 456005, gadget_id = 70211111, pos = { x = 870.589, y = 323.850, z = 1516.164 }, rot = { x = 0.000, y = 341.990, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 456007, gadget_id = 70330019, pos = { x = 863.864, y = 324.515, z = 1515.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1456008, name = "GADGET_STATE_CHANGE_456008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_456008", action = "action_EVENT_GADGET_STATE_CHANGE_456008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "seals", value = 0, no_refresh = true }
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
		monsters = { 456003 },
		gadgets = { 456001, 456007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_456008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_456008(context, evt)
	if 456007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_456008(context, evt)
	-- 创建id为456005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 456005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end