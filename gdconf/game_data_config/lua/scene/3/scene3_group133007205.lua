-- 基础信息
local base_info = {
	group_id = 133007205
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 205001, monster_id = 21010601, pos = { x = 2443.771, y = 220.217, z = 207.291 }, rot = { x = 0.000, y = 84.036, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 205004, monster_id = 21010701, pos = { x = 2448.043, y = 219.669, z = 209.857 }, rot = { x = 0.000, y = 218.124, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 205005, monster_id = 21010401, pos = { x = 2446.791, y = 219.932, z = 205.839 }, rot = { x = 0.000, y = 338.649, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205002, gadget_id = 70211012, pos = { x = 2444.700, y = 220.028, z = 210.100 }, rot = { x = 0.000, y = 132.776, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 205006, gadget_id = 70310006, pos = { x = 2445.759, y = 219.992, z = 207.522 }, rot = { x = 0.000, y = 133.068, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 205007, gadget_id = 70220013, pos = { x = 2445.879, y = 219.839, z = 212.041 }, rot = { x = 0.000, y = 356.571, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 205008, gadget_id = 70220013, pos = { x = 2442.038, y = 220.306, z = 209.675 }, rot = { x = 0.000, y = 142.983, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205003, name = "ANY_MONSTER_DIE_205003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_205003", action = "action_EVENT_ANY_MONSTER_DIE_205003" }
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
		monsters = { 205001, 205004, 205005 },
		gadgets = { 205002, 205006, 205007, 205008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_205003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_205003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_205003(context, evt)
	-- 将configid为 205002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205002, GadgetState.Default) then
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