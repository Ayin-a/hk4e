-- 基础信息
local base_info = {
	group_id = 144001065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65007, monster_id = 21011001, pos = { x = 750.482, y = 192.532, z = 226.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 65008, monster_id = 21010301, pos = { x = 748.627, y = 193.328, z = 222.774 }, rot = { x = 0.000, y = 173.138, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9012, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65001, gadget_id = 70220013, pos = { x = 753.114, y = 193.245, z = 214.507 }, rot = { x = 0.000, y = 8.972, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 65002, gadget_id = 70360001, pos = { x = 749.366, y = 193.262, z = 217.935 }, rot = { x = 0.000, y = 26.660, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 102 },
	{ config_id = 65004, gadget_id = 70220026, pos = { x = 754.403, y = 193.343, z = 213.465 }, rot = { x = 0.000, y = 26.406, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 65005, gadget_id = 70310006, pos = { x = 748.376, y = 193.347, z = 220.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
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
		monsters = { 65007, 65008 },
		gadgets = { 65001, 65004, 65005 },
		regions = { },
		triggers = { },
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