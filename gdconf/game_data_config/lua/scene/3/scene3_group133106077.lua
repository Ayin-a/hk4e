-- 基础信息
local base_info = {
	group_id = 133106077
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77005, monster_id = 21011001, pos = { x = -467.842, y = 193.777, z = 1066.576 }, rot = { x = 0.000, y = 333.120, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 8 },
	{ config_id = 77006, monster_id = 21011001, pos = { x = -463.034, y = 193.777, z = 1069.830 }, rot = { x = 0.000, y = 333.120, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 77002, gadget_id = 70211012, pos = { x = -462.105, y = 193.767, z = 1061.874 }, rot = { x = 0.000, y = 333.114, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1077003, name = "ANY_MONSTER_DIE_77003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77003", action = "action_EVENT_ANY_MONSTER_DIE_77003" }
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
		monsters = { 77005, 77006 },
		gadgets = { 77002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77003(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.Default) then
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