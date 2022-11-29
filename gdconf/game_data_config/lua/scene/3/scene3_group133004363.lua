-- 基础信息
local base_info = {
	group_id = 133004363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 26010101, pos = { x = 2555.165, y = 255.742, z = -422.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "骗骗花", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 363002, gadget_id = 70220004, pos = { x = 2559.842, y = 257.934, z = -431.231 }, rot = { x = 8.081, y = 0.821, z = 11.577 }, level = 15, area_id = 4 },
	{ config_id = 363003, gadget_id = 70220004, pos = { x = 2557.019, y = 255.577, z = -412.629 }, rot = { x = 1.203, y = 0.046, z = 4.372 }, level = 15, area_id = 4 },
	{ config_id = 363004, gadget_id = 70220004, pos = { x = 2544.487, y = 254.698, z = -425.344 }, rot = { x = 2.171, y = 0.153, z = 8.046 }, level = 15, area_id = 4 },
	{ config_id = 363005, gadget_id = 70211111, pos = { x = 2554.397, y = 256.563, z = -429.378 }, rot = { x = 4.701, y = 15.234, z = 13.073 }, level = 16, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1363006, name = "ANY_GADGET_DIE_363006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363006", action = "action_EVENT_ANY_GADGET_DIE_363006", trigger_count = 0 },
	{ config_id = 1363007, name = "ANY_MONSTER_DIE_363007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363007", action = "action_EVENT_ANY_MONSTER_DIE_363007" },
	{ config_id = 1363008, name = "GROUP_LOAD_363008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_363008", action = "action_EVENT_GROUP_LOAD_363008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest_open", value = 0, no_refresh = true }
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
		gadgets = { 363002, 363003, 363004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363006", "ANY_MONSTER_DIE_363007", "GROUP_LOAD_363008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004363}) ~= 0 then
		return false
	end
	
	-- 判断变量"chest_open"为0
	if ScriptLib.GetGroupVariableValue(context, "chest_open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363007(context, evt)
	-- 创建id为363005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363005 }) then
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
function condition_EVENT_GROUP_LOAD_363008(context, evt)
	-- 判断变量"chest_open"为1
	if ScriptLib.GetGroupVariableValue(context, "chest_open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_363008(context, evt)
	-- 创建id为363005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end