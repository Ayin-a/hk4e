-- 基础信息
local base_info = {
	group_id = 133102681
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 681007, monster_id = 20011501, pos = { x = 1313.783, y = 203.140, z = 229.263 }, rot = { x = 0.000, y = 219.361, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 681008, monster_id = 20011501, pos = { x = 1308.227, y = 202.340, z = 226.914 }, rot = { x = 0.000, y = 111.336, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 681009, monster_id = 20011501, pos = { x = 1312.191, y = 202.209, z = 223.245 }, rot = { x = 0.000, y = 344.718, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 681001, gadget_id = 70220008, pos = { x = 1313.754, y = 202.686, z = 229.469 }, rot = { x = 344.957, y = 357.553, z = 18.378 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 681002, gadget_id = 70220008, pos = { x = 1312.103, y = 202.032, z = 222.516 }, rot = { x = 350.345, y = 0.000, z = 0.000 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 681003, gadget_id = 70220008, pos = { x = 1307.779, y = 202.127, z = 227.072 }, rot = { x = 0.000, y = 325.120, z = 0.000 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 681004, gadget_id = 70211001, pos = { x = 1312.152, y = 202.007, z = 222.523 }, rot = { x = 351.221, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 681005, gadget_id = 70211001, pos = { x = 1307.803, y = 202.139, z = 227.141 }, rot = { x = 0.000, y = 130.990, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 681006, gadget_id = 70211001, pos = { x = 1313.776, y = 202.714, z = 229.511 }, rot = { x = 17.536, y = 239.231, z = 0.508 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1681010, name = "ANY_MONSTER_DIE_681010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_681010", action = "action_EVENT_ANY_MONSTER_DIE_681010", trigger_count = 0 },
	{ config_id = 1681011, name = "ANY_GADGET_DIE_681011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_681011", action = "action_EVENT_ANY_GADGET_DIE_681011", trigger_count = 0 }
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
		gadgets = { 681001, 681002, 681003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_681011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 681007, 681008, 681009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_681010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_681010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_681010(context, evt)
	-- 创建id为681004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 681004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为681005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 681005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为681006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 681006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_681011(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133102681}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_681011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102681, 2)
	
	return 0
end