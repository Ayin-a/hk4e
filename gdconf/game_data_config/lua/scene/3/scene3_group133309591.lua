-- 基础信息
local base_info = {
	group_id = 133309591
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 591001, monster_id = 24040201, pos = { x = -2168.929, y = 176.112, z = 5779.297 }, rot = { x = 0.000, y = 81.292, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1, area_id = 27 },
	{ config_id = 591008, monster_id = 24040101, pos = { x = -2163.578, y = 175.642, z = 5729.771 }, rot = { x = 0.000, y = 330.124, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 591002, gadget_id = 70211012, pos = { x = -2157.383, y = 172.873, z = 5762.935 }, rot = { x = 354.578, y = 0.594, z = 355.696 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 591004, gadget_id = 70330432, pos = { x = -2150.540, y = 172.385, z = 5770.543 }, rot = { x = 356.886, y = 27.210, z = 352.413 }, level = 32, area_id = 27 },
	{ config_id = 591005, gadget_id = 70330432, pos = { x = -2152.434, y = 172.916, z = 5735.137 }, rot = { x = 294.104, y = 285.846, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 591007, gadget_id = 70330432, pos = { x = -2178.021, y = 175.723, z = 5747.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 591011, gadget_id = 70210101, pos = { x = -2166.290, y = 174.265, z = 5749.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 591012, gadget_id = 70210101, pos = { x = -2163.552, y = 174.294, z = 5757.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1591003, name = "ANY_MONSTER_DIE_591003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_591003", action = "action_EVENT_ANY_MONSTER_DIE_591003" }
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
		monsters = { 591001, 591008 },
		gadgets = { 591002, 591004, 591005, 591007, 591011, 591012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_591003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_591003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_591003(context, evt)
	-- 将configid为 591002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 591002, GadgetState.Default) then
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