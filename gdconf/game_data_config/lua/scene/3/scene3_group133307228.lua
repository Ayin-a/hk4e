-- 基础信息
local base_info = {
	group_id = 133307228
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 228001, monster_id = 25310201, pos = { x = -1230.397, y = -1.179, z = 5473.370 }, rot = { x = 0.000, y = 150.725, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9002, area_id = 32 },
	{ config_id = 228004, monster_id = 25310301, pos = { x = -1224.611, y = -1.270, z = 5473.947 }, rot = { x = 0.000, y = 246.282, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 228002, gadget_id = 70211012, pos = { x = -1229.533, y = -0.682, z = 5467.697 }, rot = { x = 0.000, y = 335.483, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 228005, gadget_id = 70210101, pos = { x = -1250.562, y = -0.536, z = 5463.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1228003, name = "ANY_MONSTER_DIE_228003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_228003", action = "action_EVENT_ANY_MONSTER_DIE_228003" }
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
		monsters = { 228001, 228004 },
		gadgets = { 228002, 228005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_228003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_228003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_228003(context, evt)
	-- 将configid为 228002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228002, GadgetState.Default) then
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