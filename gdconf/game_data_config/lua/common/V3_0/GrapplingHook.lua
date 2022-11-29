--[[======================================
||	filename:	GrapplingHook
||	owner: 		zijun.ma
||	description:	用于临时让钩爪可以绑定AbilityGroup，之后应该弃用。
||	LogName:	TD_GrapplingHook
||	Protection:
=======================================]]--
local GrapplingHook=
{
    RegionConfigId = 8100001,
    GadgetId = 70900403
}

function LF_Initialize_Level_ForHook()
	local initRegionConfigId=GrapplingHook.RegionConfigId
	local regionRelated = {}
    for k,v in ipairs(gadgets) do
	    local gadgetConfig = v
	    if gadgetConfig.gadget_id == GrapplingHook.GadgetId then
		    local gadgetConfigID = gadgetConfig.config_id
		    -- 插入regions ， //GrapplingHookSkill_GroupPlay
		    local insertRegion={ config_id = initRegionConfigId, shape = RegionShape.SPHERE, radius = 30, pos=gadgetConfig.pos, area_id = gadgetConfig.area_id,ability_group_list = { "GrapplingHookSkill_GroupPlay" } }
		    table.insert(regions,insertRegion)
		    -- 关联钩爪与region
		    regionRelated[gadgetConfigID] = {gadgetConfigID = gadgetConfigID,regionConfigID = initRegionConfigId}
		    -- id+1
		    initRegionConfigId = initRegionConfigId + 1
	    end
    end
	AddRegionInSuite(regionRelated)
end

function Electric_Core_Explain(context)
	ScriptLib.MarkPlayerAction(context, 7002, 3, 1)
	return 0
end

function AddRegionInSuite(regionRelated)
	for i = 1,#suites do
		for _k,v in ipairs(suites[i].gadgets) do
			if nil ~= regionRelated[v] then
				table.insert(suites[i].regions,regionRelated[v].regionConfigID)
			end
		end
	end
end

LF_Initialize_Level_ForHook()
--- ServerUploadTool Save to [/root/env/data/lua/common/V3_0]  ---