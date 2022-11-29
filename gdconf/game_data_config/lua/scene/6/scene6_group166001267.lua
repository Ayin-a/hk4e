-- 基础信息
local base_info = {
	group_id = 166001267
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 267001, monster_id = 23010501, pos = { x = 731.077, y = 732.914, z = 181.056 }, rot = { x = 0.000, y = 236.690, z = 0.000 }, level = 36, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 300 },
	{ config_id = 267004, monster_id = 23010601, pos = { x = 728.149, y = 732.860, z = 181.469 }, rot = { x = 0.000, y = 85.817, z = 0.000 }, level = 36, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267002, gadget_id = 70211002, pos = { x = 727.630, y = 732.930, z = 177.444 }, rot = { x = 3.984, y = 24.389, z = 357.317 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 267005, gadget_id = 70220050, pos = { x = 735.565, y = 733.030, z = 186.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 267006, gadget_id = 70220051, pos = { x = 734.491, y = 733.107, z = 187.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 267007, gadget_id = 70220048, pos = { x = 736.748, y = 732.964, z = 177.521 }, rot = { x = 0.000, y = 338.332, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267003, name = "ANY_MONSTER_DIE_267003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_267003", action = "action_EVENT_ANY_MONSTER_DIE_267003" }
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
		monsters = { 267001, 267004 },
		gadgets = { 267002, 267005, 267006, 267007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_267003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_267003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_267003(context, evt)
	-- 将configid为 267002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 267002, GadgetState.Default) then
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