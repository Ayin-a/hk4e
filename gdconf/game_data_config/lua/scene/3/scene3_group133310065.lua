-- 基础信息
local base_info = {
	group_id = 133310065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65004, monster_id = 25210201, pos = { x = -2610.728, y = 239.918, z = 4345.375 }, rot = { x = 0.000, y = 207.154, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 26 },
	{ config_id = 65005, monster_id = 25210303, pos = { x = -2596.926, y = 236.343, z = 4345.254 }, rot = { x = 0.000, y = 78.257, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 65006, monster_id = 25210502, pos = { x = -2612.520, y = 239.941, z = 4341.277 }, rot = { x = 0.000, y = 17.139, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 26 },
	{ config_id = 65014, monster_id = 25310101, pos = { x = -2604.352, y = 238.130, z = 4335.534 }, rot = { x = 0.000, y = 55.963, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65001, gadget_id = 70220128, pos = { x = -2611.600, y = 239.904, z = 4343.423 }, rot = { x = 0.000, y = 290.788, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 65002, gadget_id = 70211012, pos = { x = -2606.741, y = 239.014, z = 4348.409 }, rot = { x = 0.000, y = 136.641, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 65007, gadget_id = 70220048, pos = { x = -2613.241, y = 239.699, z = 4349.588 }, rot = { x = 0.000, y = 39.003, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 65008, gadget_id = 70220048, pos = { x = -2607.452, y = 238.249, z = 4334.471 }, rot = { x = 0.000, y = 290.128, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 65009, gadget_id = 70330429, pos = { x = -2613.516, y = 239.824, z = 4347.995 }, rot = { x = 0.311, y = 23.250, z = 358.583 }, level = 32, area_id = 26 },
	{ config_id = 65010, gadget_id = 70330428, pos = { x = -2606.541, y = 238.267, z = 4335.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 65011, gadget_id = 70210101, pos = { x = -2605.643, y = 238.659, z = 4346.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
	{ config_id = 65012, gadget_id = 70210101, pos = { x = -2600.727, y = 237.006, z = 4351.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 26 },
	{ config_id = 65013, gadget_id = 70210101, pos = { x = -2613.435, y = 239.889, z = 4338.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 26 },
	{ config_id = 65015, gadget_id = 70330427, pos = { x = -2607.572, y = 238.400, z = 4336.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
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
		monsters = { 65004, 65005, 65006, 65014 },
		gadgets = { 65001, 65002, 65007, 65008, 65009, 65010, 65011, 65012, 65013, 65015 },
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