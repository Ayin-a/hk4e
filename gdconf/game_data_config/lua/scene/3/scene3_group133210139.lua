-- 基础信息
local base_info = {
	group_id = 133210139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139001, monster_id = 24020301, pos = { x = -3651.028, y = 200.226, z = -1011.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 17 },
	{ config_id = 139004, monster_id = 24020101, pos = { x = -3658.753, y = 203.699, z = -1007.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139002, gadget_id = 70211012, pos = { x = -3657.075, y = 200.437, z = -1009.813 }, rot = { x = 1.968, y = 143.149, z = 4.110 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139003, name = "ANY_MONSTER_DIE_139003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139003", action = "action_EVENT_ANY_MONSTER_DIE_139003" }
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
		monsters = { 139001, 139004 },
		gadgets = { 139002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_139003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_139003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_139003(context, evt)
	-- 将configid为 139002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end