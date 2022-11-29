-- 基础信息
local base_info = {
	group_id = 133105148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 186, monster_id = 21030201, pos = { x = 987.775, y = 255.988, z = -164.014 }, rot = { x = 0.000, y = 295.778, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 9 },
	{ config_id = 187, monster_id = 21010501, pos = { x = 983.565, y = 256.016, z = -164.450 }, rot = { x = 0.000, y = 60.932, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249, gadget_id = 70310006, pos = { x = 986.369, y = 255.981, z = -163.279 }, rot = { x = 5.964, y = 0.000, z = 3.871 }, level = 25, area_id = 9 },
	{ config_id = 393, gadget_id = 70211012, pos = { x = 986.505, y = 256.016, z = -166.168 }, rot = { x = 0.841, y = 357.994, z = 359.192 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148001, name = "ANY_MONSTER_DIE_148001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148001", action = "action_EVENT_ANY_MONSTER_DIE_148001" }
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
		-- description = suite_1,
		monsters = { 186, 187 },
		gadgets = { 249, 393 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148001(context, evt)
	-- 解锁目标393
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 393, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end