-- 基础信息
local base_info = {
	group_id = 177008013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 21030603, pos = { x = -328.866, y = 269.104, z = 317.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, affix = { 1041 }, pose_id = 9012, area_id = 210 },
	{ config_id = 13004, monster_id = 22010302, pos = { x = -333.761, y = 269.424, z = 321.387 }, rot = { x = 0.000, y = 42.918, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, affix = { 1041 }, pose_id = 9013, area_id = 210 },
	{ config_id = 13005, monster_id = 21020201, pos = { x = -331.120, y = 268.586, z = 328.096 }, rot = { x = 0.000, y = 170.333, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1041 }, pose_id = 401, area_id = 210 },
	{ config_id = 13006, monster_id = 21020701, pos = { x = -325.543, y = 267.776, z = 326.838 }, rot = { x = 0.000, y = 211.871, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1041 }, pose_id = 401, area_id = 210 },
	{ config_id = 13007, monster_id = 21011002, pos = { x = -324.921, y = 268.059, z = 321.029 }, rot = { x = 0.000, y = 265.001, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1041 }, pose_id = 32, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13002, gadget_id = 70211158, pos = { x = -328.597, y = 268.526, z = 323.131 }, rot = { x = 0.000, y = 0.000, z = 353.549 }, level = 16, drop_tag = "渊下宫活动高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 13008, gadget_id = 70220014, pos = { x = -334.130, y = 269.014, z = 327.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13009, gadget_id = 70220014, pos = { x = -333.445, y = 268.864, z = 328.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13010, gadget_id = 70220014, pos = { x = -336.635, y = 269.989, z = 319.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13011, gadget_id = 70220014, pos = { x = -336.067, y = 270.023, z = 318.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13012, gadget_id = 70220013, pos = { x = -337.269, y = 270.275, z = 317.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13013, gadget_id = 70220013, pos = { x = -320.889, y = 267.065, z = 322.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13014, gadget_id = 70220013, pos = { x = -321.422, y = 267.089, z = 324.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13015, gadget_id = 70300089, pos = { x = -331.995, y = 268.967, z = 323.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13016, gadget_id = 70300089, pos = { x = -327.419, y = 268.559, z = 320.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 13017, gadget_id = 70300089, pos = { x = -328.457, y = 268.361, z = 327.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013003, name = "ANY_MONSTER_DIE_13003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13003", action = "action_EVENT_ANY_MONSTER_DIE_13003" }
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
		monsters = { 13001, 13004, 13005, 13006, 13007 },
		gadgets = { 13002, 13008, 13009, 13010, 13011, 13012, 13013, 13014, 13015, 13016, 13017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13003(context, evt)
	-- 将configid为 13002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13002, GadgetState.Default) then
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