-- 基础信息
local base_info = {
	group_id = 133105129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213, monster_id = 21010201, pos = { x = 1001.444, y = 243.314, z = -293.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 9 },
	{ config_id = 214, monster_id = 21010201, pos = { x = 999.245, y = 243.960, z = -292.619 }, rot = { x = 0.000, y = 64.519, z = 0.000 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 9 },
	{ config_id = 129002, monster_id = 21020201, pos = { x = 999.755, y = 243.621, z = -295.214 }, rot = { x = 0.000, y = 11.987, z = 0.000 }, level = 25, drop_tag = "丘丘暴徒", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70211012, pos = { x = 1001.273, y = 243.105, z = -297.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 129001, gadget_id = 70300091, pos = { x = 1001.780, y = 242.791, z = -291.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000165, name = "ANY_MONSTER_DIE_165", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_165", action = "action_EVENT_ANY_MONSTER_DIE_165" }
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
		monsters = { 213, 214, 129002 },
		gadgets = { 308, 129001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_165" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 将configid为 308 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308, GadgetState.Default) then
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