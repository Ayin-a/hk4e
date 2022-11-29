-- 基础信息
local base_info = {
	group_id = 133004289
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 289004, monster_id = 21030201, pos = { x = 2764.002, y = 229.300, z = -157.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 289005, monster_id = 21030301, pos = { x = 2767.007, y = 229.270, z = -155.646 }, rot = { x = 0.000, y = 313.664, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 289006, monster_id = 21010401, pos = { x = 2760.895, y = 227.200, z = -151.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 289007, monster_id = 21010401, pos = { x = 2767.177, y = 227.200, z = -150.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 289002, gadget_id = 70211012, pos = { x = 2766.600, y = 229.270, z = -159.900 }, rot = { x = 0.000, y = 344.770, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1289003, name = "ANY_MONSTER_DIE_289003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_289003", action = "action_EVENT_ANY_MONSTER_DIE_289003" }
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
		monsters = { 289004, 289005, 289006, 289007 },
		gadgets = { 289002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_289003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 将configid为 289002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 289002, GadgetState.Default) then
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