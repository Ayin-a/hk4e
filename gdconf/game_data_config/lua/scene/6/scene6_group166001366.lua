-- 基础信息
local base_info = {
	group_id = 166001366
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 366001, monster_id = 25010201, pos = { x = 1033.195, y = 842.956, z = 512.510 }, rot = { x = 0.000, y = 57.459, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 },
	{ config_id = 366004, monster_id = 25070101, pos = { x = 1020.889, y = 843.256, z = 506.945 }, rot = { x = 0.000, y = 68.871, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 300 },
	{ config_id = 366005, monster_id = 25010201, pos = { x = 1035.052, y = 842.805, z = 521.229 }, rot = { x = 0.000, y = 214.779, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 366002, gadget_id = 70211002, pos = { x = 1022.969, y = 843.231, z = 498.599 }, rot = { x = 0.834, y = 44.436, z = 2.069 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 366007, gadget_id = 70210101, pos = { x = 1020.414, y = 843.881, z = 492.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1366003, name = "ANY_MONSTER_DIE_366003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_366003", action = "action_EVENT_ANY_MONSTER_DIE_366003" }
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
		monsters = { 366001, 366004, 366005 },
		gadgets = { 366002, 366007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_366003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_366003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_366003(context, evt)
	-- 将configid为 366002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 366002, GadgetState.Default) then
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