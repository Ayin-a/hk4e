-- 基础信息
local base_info = {
	group_id = 133310558
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 558001, monster_id = 25210302, pos = { x = -2362.304, y = 105.767, z = 4823.323 }, rot = { x = 0.000, y = 304.952, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 26 },
	{ config_id = 558005, monster_id = 25210203, pos = { x = -2364.856, y = 105.874, z = 4826.686 }, rot = { x = 0.000, y = 184.941, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 26 },
	{ config_id = 558006, monster_id = 25310301, pos = { x = -2359.321, y = 105.509, z = 4825.742 }, rot = { x = 0.000, y = 81.269, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 26 },
	{ config_id = 558007, monster_id = 25210501, pos = { x = -2359.348, y = 105.810, z = 4819.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 558002, gadget_id = 70211002, pos = { x = -2370.698, y = 107.254, z = 4826.018 }, rot = { x = 356.944, y = 104.144, z = 349.948 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 558004, gadget_id = 70330432, pos = { x = -2365.293, y = 105.776, z = 4824.465 }, rot = { x = 345.589, y = 53.236, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 558008, gadget_id = 70210101, pos = { x = -2365.812, y = 106.151, z = 4824.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1558003, name = "ANY_MONSTER_DIE_558003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_558003", action = "action_EVENT_ANY_MONSTER_DIE_558003" }
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
		monsters = { 558001, 558005, 558006, 558007 },
		gadgets = { 558002, 558004, 558008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_558003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_558003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_558003(context, evt)
	-- 将configid为 558002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 558002, GadgetState.Default) then
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