-- 基础信息
local base_info = {
	group_id = 133003218
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 855, monster_id = 21010201, pos = { x = 2743.822, y = 260.034, z = -1376.614 }, rot = { x = 0.000, y = 294.459, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 856, monster_id = 21010601, pos = { x = 2741.154, y = 260.458, z = -1374.836 }, rot = { x = 0.000, y = 131.211, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 857, monster_id = 21010501, pos = { x = 2741.296, y = 261.166, z = -1382.574 }, rot = { x = 0.000, y = 30.928, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 858, monster_id = 20011201, pos = { x = 2742.798, y = 260.142, z = -1374.564 }, rot = { x = 0.000, y = 174.116, z = 0.000 }, level = 19, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 859, monster_id = 21010201, pos = { x = 2745.154, y = 259.563, z = -1372.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "丘丘人", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2978, gadget_id = 70211002, pos = { x = 2739.797, y = 261.079, z = -1379.988 }, rot = { x = 4.814, y = 33.215, z = 355.190 }, level = 26, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2979, gadget_id = 70310004, pos = { x = 2742.350, y = 260.153, z = -1375.820 }, rot = { x = 0.000, y = 47.043, z = 0.000 }, level = 30, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000173, name = "ANY_MONSTER_DIE_173", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_173", action = "action_EVENT_ANY_MONSTER_DIE_173", tlog_tag = "望风山地_218_怪物营地_结算" }
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
		monsters = { 855, 856, 857, 858, 859 },
		gadgets = { 2978, 2979 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_173" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_173(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173(context, evt)
	-- 解锁目标2978
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2978, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end