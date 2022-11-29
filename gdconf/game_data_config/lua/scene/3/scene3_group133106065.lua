-- 基础信息
local base_info = {
	group_id = 133106065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 21010601, pos = { x = -892.013, y = 185.418, z = 1311.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 65004, monster_id = 21010901, pos = { x = -899.451, y = 185.358, z = 1308.963 }, rot = { x = 0.000, y = 30.306, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 8 },
	{ config_id = 65006, monster_id = 21011201, pos = { x = -887.106, y = 185.416, z = 1310.517 }, rot = { x = 0.000, y = 42.938, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65002, gadget_id = 70211012, pos = { x = -901.057, y = 185.358, z = 1306.522 }, rot = { x = 0.000, y = 15.848, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065003, name = "ANY_MONSTER_DIE_65003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65003", action = "action_EVENT_ANY_MONSTER_DIE_65003" }
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
		monsters = { 65001, 65004, 65006 },
		gadgets = { 65002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_65003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65003(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.Default) then
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