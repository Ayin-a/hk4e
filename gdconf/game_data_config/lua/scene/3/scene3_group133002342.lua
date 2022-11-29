-- 基础信息
local base_info = {
	group_id = 133002342
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 342004, monster_id = 21020101, pos = { x = 2078.279, y = 236.024, z = -597.147 }, rot = { x = 0.000, y = 87.173, z = 0.000 }, level = 16, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 3 },
	{ config_id = 342005, monster_id = 21030101, pos = { x = 2086.114, y = 236.871, z = -593.730 }, rot = { x = 0.000, y = 221.253, z = 0.000 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 342006, monster_id = 21010301, pos = { x = 2083.022, y = 235.983, z = -593.979 }, rot = { x = 0.000, y = 230.601, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 342007, monster_id = 21010301, pos = { x = 2082.786, y = 235.575, z = -597.228 }, rot = { x = 0.000, y = 330.431, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 342002, gadget_id = 70211012, pos = { x = 2086.500, y = 235.100, z = -596.600 }, rot = { x = 344.700, y = 271.014, z = 7.000 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1342003, name = "ANY_MONSTER_DIE_342003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_342003", action = "action_EVENT_ANY_MONSTER_DIE_342003" }
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
		monsters = { 342004, 342005, 342006, 342007 },
		gadgets = { 342002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_342003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_342003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_342003(context, evt)
	-- 将configid为 342002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 342002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end