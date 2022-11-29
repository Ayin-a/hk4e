-- 基础信息
local base_info = {
	group_id = 133303088
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 25210201, pos = { x = -1172.712, y = 215.857, z = 3779.816 }, rot = { x = 0.000, y = 297.492, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 23 },
	{ config_id = 88004, monster_id = 25310101, pos = { x = -1173.050, y = 215.910, z = 3781.623 }, rot = { x = 0.000, y = 207.276, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 },
	{ config_id = 88005, monster_id = 25210401, pos = { x = -1175.478, y = 215.936, z = 3780.525 }, rot = { x = 0.000, y = 96.510, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 88002, gadget_id = 70211002, pos = { x = -1172.549, y = 215.831, z = 3784.242 }, rot = { x = 0.000, y = 198.720, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 88006, gadget_id = 70220128, pos = { x = -1173.965, y = 215.870, z = 3780.248 }, rot = { x = 2.806, y = 15.277, z = 357.731 }, level = 30, area_id = 23 },
	{ config_id = 88007, gadget_id = 70210101, pos = { x = -1177.419, y = 216.321, z = 3785.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1088003, name = "ANY_MONSTER_DIE_88003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88003", action = "action_EVENT_ANY_MONSTER_DIE_88003" }
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
		monsters = { 88001, 88004, 88005 },
		gadgets = { 88002, 88006, 88007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88003(context, evt)
	-- 将configid为 88002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 88002, GadgetState.Default) then
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