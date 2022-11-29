-- 基础信息
local base_info = {
	group_id = 133103468
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 468001, monster_id = 24010201, pos = { x = 404.556, y = 296.904, z = 1817.377 }, rot = { x = 0.000, y = 30.393, z = 0.000 }, level = 24, drop_tag = "遗迹守卫", pose_id = 100, area_id = 6 },
	{ config_id = 468004, monster_id = 24010201, pos = { x = 405.394, y = 297.134, z = 1832.671 }, rot = { x = 0.000, y = 123.216, z = 0.000 }, level = 24, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 468002, gadget_id = 70211012, pos = { x = 399.527, y = 297.365, z = 1825.125 }, rot = { x = 356.872, y = 119.044, z = 358.265 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1468003, name = "ANY_MONSTER_DIE_468003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_468003", action = "action_EVENT_ANY_MONSTER_DIE_468003" }
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
		monsters = { 468001, 468004 },
		gadgets = { 468002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_468003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_468003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_468003(context, evt)
	-- 将configid为 468002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 468002, GadgetState.Default) then
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