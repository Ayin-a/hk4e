-- 基础信息
local base_info = {
	group_id = 133302573
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 573001, monster_id = 21010701, pos = { x = -225.052, y = 209.246, z = 2439.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 573002, monster_id = 21010701, pos = { x = -242.071, y = 212.436, z = 2364.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 573007, monster_id = 28061402, pos = { x = -213.568, y = 208.147, z = 2472.558 }, rot = { x = 0.000, y = 151.064, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", affix = { 5175 }, pose_id = 3, area_id = 24 },
	{ config_id = 573008, monster_id = 28061401, pos = { x = -208.692, y = 207.974, z = 2469.551 }, rot = { x = 0.000, y = 251.062, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", affix = { 5175 }, pose_id = 2, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 573003, gadget_id = 70300089, pos = { x = -223.690, y = 209.612, z = 2441.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 573004, gadget_id = 70300089, pos = { x = -242.662, y = 212.846, z = 2361.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 573005, gadget_id = 70211101, pos = { x = -231.421, y = 211.969, z = 2404.627 }, rot = { x = 3.633, y = 0.618, z = 19.312 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1573006, name = "ANY_GADGET_DIE_573006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_573006", action = "action_EVENT_ANY_GADGET_DIE_573006" }
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
		monsters = { 573001, 573002, 573007, 573008 },
		gadgets = { 573003, 573004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_573006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_573006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133302573}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_573006(context, evt)
	-- 创建id为573005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 573005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end