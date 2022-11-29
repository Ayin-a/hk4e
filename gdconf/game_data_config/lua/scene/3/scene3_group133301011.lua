-- 基础信息
local base_info = {
	group_id = 133301011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11003, monster_id = 28050106, pos = { x = -149.251, y = 253.778, z = 3529.442 }, rot = { x = 0.000, y = 236.694, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 },
	{ config_id = 11004, monster_id = 28050106, pos = { x = -150.379, y = 253.471, z = 3526.139 }, rot = { x = 0.000, y = 311.694, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 },
	{ config_id = 11005, monster_id = 28050106, pos = { x = -145.186, y = 255.374, z = 3526.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 },
	{ config_id = 11006, monster_id = 26120101, pos = { x = -151.139, y = 252.275, z = 3527.774 }, rot = { x = 0.000, y = 290.310, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11001, gadget_id = 70330218, pos = { x = -150.925, y = 251.707, z = 3527.725 }, rot = { x = 11.353, y = 283.404, z = 1.458 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 11002, gadget_id = 70310199, pos = { x = -170.995, y = 243.336, z = 3525.193 }, rot = { x = 0.000, y = 77.598, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 11008, gadget_id = 70211001, pos = { x = -150.242, y = 252.573, z = 3527.344 }, rot = { x = 21.330, y = 298.348, z = 1.768 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011007, name = "ANY_GADGET_DIE_11007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_11007", action = "action_EVENT_ANY_GADGET_DIE_11007" },
	{ config_id = 1011009, name = "ANY_MONSTER_DIE_11009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11009", action = "action_EVENT_ANY_MONSTER_DIE_11009" }
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
		monsters = { 11003, 11004, 11005 },
		gadgets = { 11001, 11002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_11007", "ANY_MONSTER_DIE_11009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_11007(context, evt)
	if 11001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_11007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11009(context, evt)
	--判断死亡怪物的configid是否为 11006
	if evt.param1 ~= 11006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11009(context, evt)
	-- 创建id为11008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end