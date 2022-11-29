-- 基础信息
local base_info = {
	group_id = 177008020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 25100301, pos = { x = -485.313, y = 222.206, z = 543.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "高阶武士", disableWander = true, affix = { 1041 }, pose_id = 1003, area_id = 210 },
	{ config_id = 20004, monster_id = 25100401, pos = { x = -484.592, y = 221.954, z = 548.789 }, rot = { x = 0.000, y = 189.080, z = 0.000 }, level = 36, drop_tag = "高阶武士", disableWander = true, affix = { 1041 }, pose_id = 1003, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20002, gadget_id = 70211157, pos = { x = -488.091, y = 222.510, z = 545.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 20006, gadget_id = 70220013, pos = { x = -493.768, y = 223.139, z = 548.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 20007, gadget_id = 70220013, pos = { x = -494.465, y = 223.132, z = 550.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 20008, gadget_id = 70220014, pos = { x = -493.027, y = 223.001, z = 549.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 20009, gadget_id = 70220014, pos = { x = -481.042, y = 221.662, z = 543.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 20010, gadget_id = 70220014, pos = { x = -481.413, y = 221.682, z = 544.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020003, name = "ANY_MONSTER_DIE_20003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20003", action = "action_EVENT_ANY_MONSTER_DIE_20003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 20005, monster_id = 22070301, pos = { x = -491.601, y = 222.880, z = 548.286 }, rot = { x = 0.000, y = 116.749, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 1007, 5135, 1041 }, pose_id = 9003, area_id = 210 }
	},
	gadgets = {
		{ config_id = 20011, gadget_id = 70300104, pos = { x = -488.474, y = 222.767, z = 550.150 }, rot = { x = 10.176, y = 29.521, z = 356.084 }, level = 36, area_id = 210 }
	}
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
		monsters = { 20001, 20004 },
		gadgets = { 20002, 20006, 20007, 20008, 20009, 20010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 将configid为 20002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20002, GadgetState.Default) then
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