-- 基础信息
local base_info = {
	group_id = 133301621
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 621001, monster_id = 26090801, pos = { x = -897.418, y = 363.825, z = 3181.857 }, rot = { x = 0.000, y = 50.751, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 621004, monster_id = 26090801, pos = { x = -893.612, y = 362.768, z = 3184.248 }, rot = { x = 0.000, y = 251.632, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 621011, monster_id = 26090801, pos = { x = -875.621, y = 359.558, z = 3223.480 }, rot = { x = 0.000, y = 69.236, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 621002, gadget_id = 70330218, pos = { x = -899.740, y = 363.625, z = 3184.270 }, rot = { x = 353.144, y = 95.005, z = 2.641 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 621003, gadget_id = 70217020, pos = { x = -885.725, y = 361.103, z = 3216.809 }, rot = { x = 8.611, y = 195.768, z = 20.777 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 621007, gadget_id = 70330218, pos = { x = -886.045, y = 359.687, z = 3218.242 }, rot = { x = 349.469, y = 162.825, z = 6.493 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 621010, gadget_id = 70330219, pos = { x = -876.623, y = 358.779, z = 3224.076 }, rot = { x = 358.417, y = 103.002, z = 356.916 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 621013, gadget_id = 70310198, pos = { x = -878.426, y = 356.584, z = 3201.915 }, rot = { x = 0.000, y = 160.275, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1621008, name = "ANY_GADGET_DIE_621008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621008", action = "action_EVENT_ANY_GADGET_DIE_621008" },
	{ config_id = 1621009, name = "ANY_GADGET_DIE_621009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621009", action = "action_EVENT_ANY_GADGET_DIE_621009" },
	{ config_id = 1621012, name = "ANY_GADGET_DIE_621012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_621012", action = "action_EVENT_ANY_GADGET_DIE_621012" }
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
		monsters = { 621004 },
		gadgets = { 621002, 621007, 621010, 621013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_621008", "ANY_GADGET_DIE_621009", "ANY_GADGET_DIE_621012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621008(context, evt)
	if 621002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 621001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621009(context, evt)
	if 621007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621009(context, evt)
	-- 创建id为621003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_621012(context, evt)
	if 621010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_621012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 621011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end