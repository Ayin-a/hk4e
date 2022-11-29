-- 基础信息
local base_info = {
	group_id = 247003006
}

-- DEFS_MISCS
local GroupId = 247003006
local ChestConfigID = 6003
local RegionID = 6001
local ChestConfigIDList = {6003}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6004, monster_id = 20010501, pos = { x = 321.506, y = 0.090, z = 163.596 }, rot = { x = 0.000, y = 270.502, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6005, monster_id = 20010501, pos = { x = 323.731, y = 0.090, z = 162.330 }, rot = { x = 0.000, y = 270.502, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6006, monster_id = 20010501, pos = { x = 323.117, y = 0.090, z = 157.905 }, rot = { x = 0.000, y = 270.502, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6007, monster_id = 20010501, pos = { x = 320.999, y = 0.090, z = 156.623 }, rot = { x = 0.000, y = 270.502, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6008, monster_id = 20010601, pos = { x = 323.870, y = 0.090, z = 160.073 }, rot = { x = 0.000, y = 270.502, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6003, gadget_id = 70211111, pos = { x = 320.217, y = 0.090, z = 159.985 }, rot = { x = 0.000, y = 270.502, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 6010, gadget_id = 70310125, pos = { x = 320.022, y = 0.206, z = 140.167 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6011, gadget_id = 70310125, pos = { x = 320.022, y = 0.206, z = 180.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6012, gadget_id = 70310125, pos = { x = 340.055, y = 0.162, z = 159.979 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6013, gadget_id = 70310125, pos = { x = 300.034, y = 0.162, z = 159.983 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 6001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = 320.000, y = 0.000, z = 160.000 } },
	{ config_id = 6002, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = 320.000, y = 0.000, z = 160.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1006001, name = "ENTER_REGION_6001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1006002, name = "ENTER_REGION_6002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6002", action = "action_EVENT_ENTER_REGION_6002" },
	{ config_id = 1006009, name = "ANY_MONSTER_DIE_6009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6009", action = "action_EVENT_ANY_MONSTER_DIE_6009" }
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
		monsters = { },
		gadgets = { 6003, 6010, 6011, 6012, 6013 },
		regions = { 6001, 6002 },
		triggers = { "ENTER_REGION_6001", "ENTER_REGION_6002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6004, 6005, 6006, 6007, 6008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_6002(context, evt)
	if evt.param1 ~= 6002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247003006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 247003006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 将configid为 6003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/RogueDungeon_ChestRoom"