-- 基础信息
local base_info = {
	group_id = 155005213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 22010401, pos = { x = 140.154, y = 301.499, z = 202.960 }, rot = { x = 0.000, y = 68.094, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 200 },
	{ config_id = 213012, monster_id = 21020701, pos = { x = 137.183, y = 300.747, z = 209.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", area_id = 200 },
	{ config_id = 213013, monster_id = 21010101, pos = { x = 126.816, y = 299.317, z = 219.603 }, rot = { x = 0.000, y = 173.606, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9014, area_id = 200 },
	{ config_id = 213014, monster_id = 21010101, pos = { x = 138.908, y = 301.589, z = 220.031 }, rot = { x = 0.000, y = 148.901, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 213015, monster_id = 21010101, pos = { x = 129.453, y = 299.587, z = 213.227 }, rot = { x = 0.000, y = 319.669, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 213002, gadget_id = 70211002, pos = { x = 127.624, y = 299.358, z = 211.855 }, rot = { x = 356.367, y = 16.388, z = 9.100 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 213004, gadget_id = 70300107, pos = { x = 142.786, y = 302.339, z = 203.233 }, rot = { x = 344.808, y = 358.961, z = 7.780 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 213005, gadget_id = 70310006, pos = { x = 129.495, y = 299.568, z = 210.008 }, rot = { x = 0.000, y = 315.442, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 213006, gadget_id = 70300086, pos = { x = 143.669, y = 302.059, z = 213.553 }, rot = { x = 352.905, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 213007, gadget_id = 70300086, pos = { x = 120.158, y = 297.661, z = 214.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 213008, gadget_id = 70300086, pos = { x = 140.231, y = 302.029, z = 228.638 }, rot = { x = 19.035, y = 355.586, z = 346.684 }, level = 36, area_id = 200 },
	{ config_id = 213009, gadget_id = 70310001, pos = { x = 128.376, y = 298.675, z = 231.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 213010, gadget_id = 70310001, pos = { x = 126.852, y = 298.968, z = 217.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 213011, gadget_id = 70310001, pos = { x = 139.634, y = 302.575, z = 227.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1213003, name = "ANY_MONSTER_DIE_213003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_213003", action = "action_EVENT_ANY_MONSTER_DIE_213003" }
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
		monsters = { 213001, 213012, 213013, 213014, 213015 },
		gadgets = { 213002, 213004, 213005, 213006, 213007, 213008, 213009, 213010, 213011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_213003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_213003(context, evt)
	-- 将configid为 213002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 213002, GadgetState.Default) then
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