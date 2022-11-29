-- 基础信息
local base_info = {
	group_id = 133003288
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 950, monster_id = 20011001, pos = { x = 2818.669, y = 261.427, z = -1674.932 }, rot = { x = 0.000, y = 217.232, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 951, monster_id = 21010901, pos = { x = 2814.961, y = 263.195, z = -1680.308 }, rot = { x = 0.000, y = 4.198, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 952, monster_id = 21030101, pos = { x = 2817.021, y = 261.448, z = -1675.030 }, rot = { x = 0.000, y = 165.317, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 953, monster_id = 21010101, pos = { x = 2816.989, y = 260.985, z = -1672.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3141, gadget_id = 70211002, pos = { x = 2818.014, y = 261.723, z = -1677.086 }, rot = { x = 0.000, y = 301.217, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3142, gadget_id = 70211101, pos = { x = 2840.301, y = 257.072, z = -1665.939 }, rot = { x = 346.659, y = 198.303, z = 1.132 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000201, name = "ANY_MONSTER_DIE_201", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_201", action = "action_EVENT_ANY_MONSTER_DIE_201", tlog_tag = "望风山地_288_怪物营地_结算" }
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
	rand_suite = true
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
		monsters = { 950, 951, 952, 953 },
		gadgets = { 3141, 3142 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_201" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_201(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_201(context, evt)
	-- 解锁目标3141
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3141, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end