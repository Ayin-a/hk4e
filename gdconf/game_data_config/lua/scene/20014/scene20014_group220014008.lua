-- 基础信息
local base_info = {
	group_id = 220014008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23, monster_id = 21020201, pos = { x = 187.387, y = 57.000, z = 386.195 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 24, monster_id = 21020101, pos = { x = 194.886, y = 57.000, z = 385.527 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50, gadget_id = 70211011, pos = { x = 191.534, y = 57.000, z = 381.870 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 51, gadget_id = 70211011, pos = { x = 192.427, y = 57.000, z = 382.939 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true },
	{ config_id = 52, gadget_id = 70211011, pos = { x = 190.655, y = 57.017, z = 382.963 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000019, name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 23, 24 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 创建id为50的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为51的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 51 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为52的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 52 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为53的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end