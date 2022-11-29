-- 基础信息
local base_info = {
	group_id = 133103349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349001, monster_id = 25010201, pos = { x = 390.416, y = 234.673, z = 1743.913 }, rot = { x = 0.000, y = 140.250, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 349004, monster_id = 25010301, pos = { x = 397.573, y = 234.298, z = 1740.415 }, rot = { x = 0.000, y = 144.200, z = 0.000 }, level = 24, drop_tag = "盗宝团", pose_id = 9005, area_id = 6 },
	{ config_id = 349005, monster_id = 25010301, pos = { x = 404.917, y = 233.954, z = 1743.624 }, rot = { x = 0.000, y = 23.400, z = 0.000 }, level = 24, drop_tag = "盗宝团", pose_id = 9005, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 349002, gadget_id = 70211012, pos = { x = 402.449, y = 234.154, z = 1743.071 }, rot = { x = 0.858, y = 115.184, z = 2.381 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1349003, name = "ANY_MONSTER_DIE_349003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_349003", action = "action_EVENT_ANY_MONSTER_DIE_349003" }
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
		monsters = { 349001, 349004, 349005 },
		gadgets = { 349002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_349003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_349003(context, evt)
	-- 将configid为 349002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 349002, GadgetState.Default) then
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