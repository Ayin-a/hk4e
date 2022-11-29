-- 基础信息
local base_info = {
	group_id = 133007020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 21010601, pos = { x = 2605.126, y = 179.950, z = 408.621 }, rot = { x = 0.000, y = 84.036, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 20004, monster_id = 21010701, pos = { x = 2610.301, y = 179.900, z = 412.402 }, rot = { x = 0.000, y = 209.369, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 20005, monster_id = 21010401, pos = { x = 2609.469, y = 179.256, z = 406.170 }, rot = { x = 0.000, y = 338.649, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20002, gadget_id = 70211012, pos = { x = 2606.999, y = 180.003, z = 411.500 }, rot = { x = 0.000, y = 153.782, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 20006, gadget_id = 70310006, pos = { x = 2608.611, y = 179.577, z = 408.643 }, rot = { x = 0.000, y = 133.068, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 20007, gadget_id = 70220013, pos = { x = 2612.631, y = 179.293, z = 409.617 }, rot = { x = 0.000, y = 33.702, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 20008, gadget_id = 70220013, pos = { x = 2613.005, y = 179.502, z = 411.609 }, rot = { x = 0.000, y = 142.983, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020003, name = "ANY_MONSTER_DIE_20003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20003", action = "action_EVENT_ANY_MONSTER_DIE_20003" }
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
		monsters = { 20001, 20004, 20005 },
		gadgets = { 20002, 20006, 20007, 20008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 将configid为 20002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20002, GadgetState.Default) then
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