--[[======================================
||	filename:       Activity_Fungi
||	owner:          zhangchi.chen
||	description:    蕈兽战斗白盒
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]


local extraTriggers = 
{
    --{ config_id = 40000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    --{ config_id = 40000002, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0 },
    --{ config_id = 40000003, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- TRIGGER
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
    return 0
end


--蕈兽放技能
function SLC_MushroomMonsterAlertDoSkill(context)
	PrintLog(context,"蕈兽开始释放技能")
	local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, beast, "SGV_Fungus_StartBurst_Immediately",1)
	return 0
end

------ conditions & actions ------
--group加载

function SLC_Fungus1_Move(context) 
			
	ScriptLib.KillEntityByConfigId(context, { ScriptLib.GetGroupVariableValue(context, "fungi1"), entity_type=EntityType.MONSTER})
	ScriptLib.CreateMonsterByConfigIdByPos(context, ScriptLib.GetGroupVariableValue(context, "fungi1"),  point[LF_GetCloestPoint(context)].pos, {0,0,0})
	return 0
end

function LF_GetCloestPoint(context)
	local targetpos={0,0,0}
	local uid=ScriptLib.GetSceneUidList(context)[1]
	local avatarid=GetAvatarEntityIdByUid(context, uid)
	local avatarpos=ScriptLib.GetPosByEntityId(context,avatarid)
	local shortest_key=0
	local shortest_path_square=10000000
	for k,v in pairs(points) do
		local pathlength_square=(v.pos.x-avatarpos.x)*(v.pos.x-avatarpos.x)+(v.pos.y-avatarpos.y)*(v.pos.y-avatarpos.y)+(v.pos.z-avatarpos.z)*(v.pos.z-avatarpos.z)
		if pathlength_square<shortest_path_square then
			shortest_key=k
		end
	end
	
	return shortest_key
end

LF_Initialize_Level()
