-- 基础信息
local base_info = {
	group_id = 133004362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362005, monster_id = 26010101, pos = { x = 2101.461, y = 274.684, z = -200.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "骗骗花", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362001, gadget_id = 70220004, pos = { x = 2105.027, y = 275.601, z = -207.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 362002, gadget_id = 70220004, pos = { x = 2106.852, y = 275.197, z = -191.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 362003, gadget_id = 70220004, pos = { x = 2091.927, y = 274.655, z = -200.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 362007, gadget_id = 70211111, pos = { x = 2105.529, y = 274.863, z = -199.086 }, rot = { x = 6.028, y = 267.311, z = 355.272 }, level = 11, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1362004, name = "ANY_GADGET_DIE_362004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362004", action = "action_EVENT_ANY_GADGET_DIE_362004", trigger_count = 0 },
	{ config_id = 1362006, name = "ANY_MONSTER_DIE_362006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_362006", action = "action_EVENT_ANY_MONSTER_DIE_362006" },
	{ config_id = 1362008, name = "GROUP_LOAD_362008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_362008", action = "action_EVENT_GROUP_LOAD_362008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest_open", value = 0, no_refresh = false }
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
		gadgets = { 362001, 362002, 362003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362004", "ANY_MONSTER_DIE_362006", "GROUP_LOAD_362008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004362}) ~= 0 then
		return false
	end
	
	-- 判断变量"chest_open"为0
	if ScriptLib.GetGroupVariableValue(context, "chest_open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_362006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_362006(context, evt)
	-- 创建id为362007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 362007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "chest_open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_362008(context, evt)
	-- 判断变量"chest_open"为1
	if ScriptLib.GetGroupVariableValue(context, "chest_open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_362008(context, evt)
	-- 创建id为362007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 362007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end