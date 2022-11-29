-- 基础信息
local base_info = {
	group_id = 166001560
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 560004, monster_id = 20011401, pos = { x = 784.642, y = 793.296, z = 674.522 }, rot = { x = 0.000, y = 155.249, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 560001, gadget_id = 70220008, pos = { x = 799.508, y = 789.782, z = 665.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 560002, gadget_id = 70220008, pos = { x = 784.575, y = 791.557, z = 674.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 560003, gadget_id = 70220008, pos = { x = 784.758, y = 790.300, z = 662.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1560005, name = "ANY_GADGET_DIE_560005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_560005", action = "action_EVENT_ANY_GADGET_DIE_560005" },
	{ config_id = 1560006, name = "ANY_GADGET_DIE_560006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_560006", action = "action_EVENT_ANY_GADGET_DIE_560006" }
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
		gadgets = { 560001, 560002, 560003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_560005", "ANY_GADGET_DIE_560006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_560005(context, evt)
	if 560002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_560005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 560004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_560006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001560}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_560006(context, evt)
	-- 改变指定group组166001423中， configid为423003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001423, 423003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end