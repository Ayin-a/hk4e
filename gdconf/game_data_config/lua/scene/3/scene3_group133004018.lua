-- 基础信息
local base_info = {
	group_id = 133004018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 21010101, pos = { x = 2178.136, y = 235.540, z = -449.235 }, rot = { x = 0.000, y = 65.955, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 18002, monster_id = 21010101, pos = { x = 2175.906, y = 235.498, z = -447.421 }, rot = { x = 0.000, y = 76.020, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 18003, monster_id = 21020101, pos = { x = 2176.317, y = 236.054, z = -444.046 }, rot = { x = 0.000, y = 143.983, z = 0.000 }, level = 16, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18004, gadget_id = 70211012, pos = { x = 2180.100, y = 236.144, z = -445.000 }, rot = { x = 20.420, y = 219.141, z = 351.452 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018005, name = "ANY_MONSTER_DIE_18005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18005", action = "action_EVENT_ANY_MONSTER_DIE_18005" }
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
		monsters = { 18001, 18002, 18003 },
		gadgets = { 18004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_18005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18005(context, evt)
	-- 将configid为 18004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18004, GadgetState.Default) then
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