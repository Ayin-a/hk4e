-- 基础信息
local base_info = {
	group_id = 133303108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108001, monster_id = 25210402, pos = { x = -1446.097, y = 271.794, z = 3549.913 }, rot = { x = 0.000, y = 102.858, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9502, area_id = 23 },
	{ config_id = 108004, monster_id = 25310101, pos = { x = -1442.989, y = 271.812, z = 3549.406 }, rot = { x = 0.000, y = 60.265, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 108005, monster_id = 25210201, pos = { x = -1443.105, y = 271.793, z = 3555.536 }, rot = { x = 0.000, y = 94.480, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 23 },
	{ config_id = 108008, monster_id = 25210302, pos = { x = -1440.870, y = 271.650, z = 3547.036 }, rot = { x = 0.000, y = 3.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9506, area_id = 23 },
	{ config_id = 108010, monster_id = 25210303, pos = { x = -1440.323, y = 271.793, z = 3555.753 }, rot = { x = 0.000, y = 270.614, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 108002, gadget_id = 70211012, pos = { x = -1441.936, y = 271.651, z = 3558.605 }, rot = { x = 0.000, y = 132.859, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 108006, gadget_id = 70310001, pos = { x = -1439.269, y = 271.627, z = 3547.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 108007, gadget_id = 70310001, pos = { x = -1446.713, y = 271.762, z = 3551.096 }, rot = { x = 0.000, y = 54.984, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 108009, gadget_id = 70220128, pos = { x = -1441.798, y = 271.670, z = 3555.532 }, rot = { x = 0.000, y = 353.614, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 108011, gadget_id = 70210101, pos = { x = -1430.150, y = 271.625, z = 3547.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 108012, gadget_id = 70300048, pos = { x = -1450.184, y = 271.209, z = 3549.146 }, rot = { x = 0.000, y = 210.888, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 108013, gadget_id = 70300048, pos = { x = -1449.485, y = 271.145, z = 3548.728 }, rot = { x = 0.000, y = 210.888, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 108014, gadget_id = 70300048, pos = { x = -1447.784, y = 270.927, z = 3547.911 }, rot = { x = 0.000, y = 210.888, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 108015, gadget_id = 70300048, pos = { x = -1448.573, y = 271.028, z = 3548.277 }, rot = { x = 0.000, y = 210.888, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1108003, name = "ANY_MONSTER_DIE_108003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108003", action = "action_EVENT_ANY_MONSTER_DIE_108003" }
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
		monsters = { 108001, 108004, 108005, 108008, 108010 },
		gadgets = { 108002, 108006, 108007, 108009, 108011, 108012, 108013, 108014, 108015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108003(context, evt)
	-- 将configid为 108002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.Default) then
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