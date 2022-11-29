-- 基础信息
local base_info = {
	group_id = 177008010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 21020701, pos = { x = -222.694, y = 242.654, z = 465.365 }, rot = { x = 0.000, y = 296.583, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1040 }, pose_id = 401, area_id = 210 },
	{ config_id = 10004, monster_id = 21020701, pos = { x = -231.598, y = 241.427, z = 464.597 }, rot = { x = 0.000, y = 41.324, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1040 }, pose_id = 401, area_id = 210 },
	{ config_id = 10005, monster_id = 21011002, pos = { x = -221.255, y = 242.777, z = 468.046 }, rot = { x = 0.000, y = 263.783, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 32, area_id = 210 },
	{ config_id = 10006, monster_id = 21011002, pos = { x = -231.318, y = 241.316, z = 468.378 }, rot = { x = 0.000, y = 101.987, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9003, area_id = 210 },
	{ config_id = 10007, monster_id = 22010104, pos = { x = -227.202, y = 241.522, z = 471.099 }, rot = { x = 0.000, y = 169.222, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, affix = { 1040 }, pose_id = 9013, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10002, gadget_id = 70211157, pos = { x = -226.058, y = 242.378, z = 466.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 10008, gadget_id = 70220013, pos = { x = -221.126, y = 242.256, z = 474.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 10009, gadget_id = 70220013, pos = { x = -221.284, y = 242.606, z = 472.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 10010, gadget_id = 70220014, pos = { x = -230.050, y = 241.365, z = 461.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 10011, gadget_id = 70220014, pos = { x = -222.792, y = 242.031, z = 473.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 10012, gadget_id = 70220014, pos = { x = -222.883, y = 241.921, z = 474.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010003, name = "ANY_MONSTER_DIE_10003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10003", action = "action_EVENT_ANY_MONSTER_DIE_10003" }
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
		monsters = { 10001, 10004, 10005, 10006, 10007 },
		gadgets = { 10002, 10008, 10009, 10010, 10011, 10012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 将configid为 10002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end