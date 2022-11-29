-- 基础信息
local base_info = {
	group_id = 133302499
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
	{ config_id = 499001, gadget_id = 70310214, pos = { x = -504.399, y = 181.658, z = 2421.308 }, rot = { x = 359.257, y = 359.488, z = 2.886 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 499003, gadget_id = 70900050, pos = { x = -504.399, y = 181.658, z = 2421.308 }, rot = { x = 359.257, y = 359.488, z = 2.886 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 499004, gadget_id = 70211002, pos = { x = -510.910, y = 181.366, z = 2418.446 }, rot = { x = 0.000, y = 30.206, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499002, name = "GADGET_STATE_CHANGE_499002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499002", action = "action_EVENT_GADGET_STATE_CHANGE_499002", trigger_count = 0 },
	{ config_id = 1499005, name = "GADGET_STATE_CHANGE_499005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499005", action = "action_EVENT_GADGET_STATE_CHANGE_499005" }
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
		gadgets = { 499001, 499004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499002", "GADGET_STATE_CHANGE_499005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499002(context, evt)
	if 499001 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499002(context, evt)
	-- 创建id为499003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 499003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499005(context, evt)
	if 499003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499005(context, evt)
	-- 将configid为 499004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end