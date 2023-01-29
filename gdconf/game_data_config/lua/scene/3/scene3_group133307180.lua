-- 基础信息
local base_info = {
	group_id = 133307180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 180003, monster_id = 24040101, pos = { x = -1502.436, y = 26.485, z = 5684.960 }, rot = { x = 0.000, y = 70.212, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 180001, gadget_id = 70330432, pos = { x = -1504.186, y = 28.000, z = 5678.403 }, rot = { x = 349.173, y = 52.362, z = 327.745 }, level = 32, area_id = 32 },
	{ config_id = 180002, gadget_id = 70330432, pos = { x = -1505.633, y = 26.912, z = 5691.469 }, rot = { x = 22.402, y = 106.879, z = 13.638 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 180004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1501.315, y = 27.068, z = 5685.266 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1180004, name = "ENTER_REGION_180004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180004", action = "action_EVENT_ENTER_REGION_180004" }
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
		monsters = { 180003 },
		gadgets = { 180001, 180002 },
		regions = { 180004 },
		triggers = { "ENTER_REGION_180004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_180004(context, evt)
	if evt.param1 ~= 180004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180004(context, evt)
	-- 通知groupid为133307180中,configid为：180003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 180003, 133307180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end