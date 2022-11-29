-- 基础信息
local base_info = {
	group_id = 133301320
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 320001, monster_id = 22040201, pos = { x = -414.671, y = 216.241, z = 3742.989 }, rot = { x = 0.000, y = 231.081, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 320002, monster_id = 22040201, pos = { x = -417.500, y = 216.605, z = 3743.733 }, rot = { x = 0.000, y = 186.147, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 320003, monster_id = 22040201, pos = { x = -442.999, y = 222.872, z = 3742.062 }, rot = { x = 0.000, y = 196.516, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 320005, monster_id = 22040201, pos = { x = -440.686, y = 222.101, z = 3742.985 }, rot = { x = 0.000, y = 152.765, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 320006, monster_id = 22040201, pos = { x = -425.712, y = 214.434, z = 3763.248 }, rot = { x = 0.000, y = 320.203, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 320007, monster_id = 22040201, pos = { x = -425.726, y = 213.801, z = 3766.019 }, rot = { x = 0.000, y = 256.095, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 320008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -442.423, y = 222.807, z = 3744.935 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1320004, name = "GROUP_LOAD_320004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_320004", action = "action_EVENT_GROUP_LOAD_320004", trigger_count = 0 },
	{ config_id = 1320008, name = "ENTER_REGION_320008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_320008", action = "action_EVENT_ENTER_REGION_320008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 320009, monster_id = 22040201, pos = { x = -455.278, y = 229.689, z = 3722.524 }, rot = { x = 0.000, y = 231.081, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", affix = { 6117 }, pose_id = 101, area_id = 22 }
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
		monsters = { 320001, 320002, 320006, 320007 },
		gadgets = { },
		regions = { 320008 },
		triggers = { "GROUP_LOAD_320004", "ENTER_REGION_320008" },
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
function condition_EVENT_GROUP_LOAD_320004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_320004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301320, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_320008(context, evt)
	if evt.param1 ~= 320008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_320008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 320003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 320005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"