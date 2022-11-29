-- 基础信息
local base_info = {
	group_id = 133103457
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 457005, monster_id = 28050102, pos = { x = 523.391, y = 175.221, z = 1100.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 457001, gadget_id = 70330019, pos = { x = 519.316, y = 172.948, z = 1092.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 457002, gadget_id = 70330021, pos = { x = 521.664, y = 173.264, z = 1100.364 }, rot = { x = 0.000, y = 250.998, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 457003, gadget_id = 70211001, pos = { x = 519.523, y = 173.112, z = 1090.769 }, rot = { x = 5.356, y = 270.038, z = 0.004 }, level = 21, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1457004, name = "GADGET_STATE_CHANGE_457004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_457004", action = "action_EVENT_GADGET_STATE_CHANGE_457004" }
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
		monsters = { 457005 },
		gadgets = { 457001, 457002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_457004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_457004(context, evt)
	if 457001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_457004(context, evt)
	-- 创建id为457003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 457003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end