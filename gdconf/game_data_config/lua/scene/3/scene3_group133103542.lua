-- 基础信息
local base_info = {
	group_id = 133103542
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 542001, monster_id = 26030101, pos = { x = 123.473, y = 220.974, z = 1115.871 }, rot = { x = 1.260, y = 114.419, z = 1.555 }, level = 19, drop_tag = "幼岩龙蜥", disableWander = true, area_id = 6 },
	{ config_id = 542004, monster_id = 26030101, pos = { x = 128.757, y = 219.638, z = 1125.200 }, rot = { x = 358.303, y = 275.419, z = 358.940 }, level = 19, drop_tag = "幼岩龙蜥", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 542002, gadget_id = 70211012, pos = { x = 126.039, y = 220.242, z = 1119.719 }, rot = { x = 13.213, y = 359.463, z = 352.899 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1542003, name = "ANY_MONSTER_DIE_542003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_542003", action = "action_EVENT_ANY_MONSTER_DIE_542003" }
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
		monsters = { 542001, 542004 },
		gadgets = { 542002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_542003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_542003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_542003(context, evt)
	-- 将configid为 542002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 542002, GadgetState.Default) then
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