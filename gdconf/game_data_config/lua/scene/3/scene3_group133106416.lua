-- 基础信息
local base_info = {
	group_id = 133106416
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 416001, monster_id = 25010701, pos = { x = -837.605, y = 129.763, z = 1643.259 }, rot = { x = 0.000, y = 223.056, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9003, area_id = 19 },
	{ config_id = 416002, monster_id = 25010701, pos = { x = -828.441, y = 129.637, z = 1649.878 }, rot = { x = 0.000, y = 32.314, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 19 },
	{ config_id = 416003, monster_id = 25010401, pos = { x = -832.534, y = 126.325, z = 1667.225 }, rot = { x = 0.000, y = 171.678, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 19 },
	{ config_id = 416004, monster_id = 25010701, pos = { x = -832.877, y = 126.216, z = 1663.796 }, rot = { x = 0.000, y = 354.884, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 19 },
	{ config_id = 416005, monster_id = 25010401, pos = { x = -822.470, y = 126.259, z = 1666.203 }, rot = { x = 0.000, y = 69.708, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1416006, name = "ANY_MONSTER_DIE_416006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_416006", action = "action_EVENT_ANY_MONSTER_DIE_416006", trigger_count = 0 }
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
	end_suite = 2,
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
		monsters = { 416001, 416002, 416003, 416004, 416005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_416006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_416006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_416006(context, evt)
	-- 改变指定group组133106417中， configid为417001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133106417, 417001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end