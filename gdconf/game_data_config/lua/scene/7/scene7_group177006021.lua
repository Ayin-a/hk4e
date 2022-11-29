-- 基础信息
local base_info = {
	group_id = 177006021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 21011001, pos = { x = 290.422, y = 174.921, z = -291.002 }, rot = { x = 0.000, y = 95.887, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1032 }, pose_id = 32, area_id = 210 },
	{ config_id = 21012, monster_id = 21010201, pos = { x = 300.390, y = 174.140, z = -287.141 }, rot = { x = 0.000, y = 11.408, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1032 }, pose_id = 9012, area_id = 210 },
	{ config_id = 21013, monster_id = 21010201, pos = { x = 299.565, y = 174.263, z = -280.986 }, rot = { x = 0.000, y = 172.383, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1032 }, pose_id = 9012, area_id = 210 },
	{ config_id = 21014, monster_id = 21020701, pos = { x = 296.547, y = 174.804, z = -287.988 }, rot = { x = 0.000, y = 353.642, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1032 }, pose_id = 401, area_id = 210 },
	{ config_id = 21015, monster_id = 21011001, pos = { x = 298.795, y = 174.302, z = -289.988 }, rot = { x = 0.000, y = 49.291, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1032 }, pose_id = 32, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21002, gadget_id = 70211153, pos = { x = 299.403, y = 174.122, z = -278.525 }, rot = { x = 352.045, y = 195.141, z = 8.346 }, level = 16, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 21004, gadget_id = 70300101, pos = { x = 296.342, y = 173.691, z = -271.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21006, gadget_id = 70220013, pos = { x = 301.838, y = 173.355, z = -273.977 }, rot = { x = 2.089, y = 0.190, z = 355.791 }, level = 1, area_id = 210 },
	{ config_id = 21007, gadget_id = 70220013, pos = { x = 299.472, y = 173.615, z = -273.169 }, rot = { x = 5.091, y = 29.523, z = 356.345 }, level = 1, area_id = 210 },
	{ config_id = 21008, gadget_id = 70300086, pos = { x = 300.149, y = 173.043, z = -290.790 }, rot = { x = 333.317, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21009, gadget_id = 70300086, pos = { x = 293.115, y = 174.753, z = -278.277 }, rot = { x = 11.469, y = 23.033, z = 35.117 }, level = 1, area_id = 210 },
	{ config_id = 21011, gadget_id = 70300107, pos = { x = 301.017, y = 174.058, z = -283.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021003, name = "ANY_MONSTER_DIE_21003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21003", action = "action_EVENT_ANY_MONSTER_DIE_21003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "state", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 21010, monster_id = 22010201, pos = { x = 304.174, y = 173.418, z = -283.603 }, rot = { x = 0.000, y = 257.250, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, affix = { 1032 }, pose_id = 9013, area_id = 210 }
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
		monsters = { 21001, 21012, 21013, 21014, 21015 },
		gadgets = { 21002, 21004, 21006, 21007, 21008, 21009, 21011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"state"为0
	if ScriptLib.GetGroupVariableValue(context, "state") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 改变指定group组177006060中， configid为60003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177006060, 60003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end