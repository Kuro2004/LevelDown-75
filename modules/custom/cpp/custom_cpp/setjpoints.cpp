#include "common/logging.h"
#include "common/sql.h"
#include "lua/lua_baseentity.h"
#include "lua/luautils.h"
#include "map/utils/charutils.h"
#include "map/utils/moduleutils.h"
#include "map/job_points.h"
/************************************************************************
 *  Function: setJPoints()
 *  Purpose : Sets a PC's Jobpoints by job.
 *  Example : player:setJPoints()
 *  Notes   :
 ************************************************************************/
class setjpoints : public CPPModule
{
    void OnInit() override // Called just before the server is ready to run.
    {
        lua["CBaseEntity"]["setJPoints"] = [](CLuaBaseEntity* PLuaBaseEntity, uint8 jobID, int16 amount) -> void
        {
            TracyZoneScoped;

            CBaseEntity* PEntity = PLuaBaseEntity->GetBaseEntity();
            if (PEntity->objtype != TYPE_PC)
            {
                ShowWarning("Invalid entity type calling function (%s).", PEntity->getName());
                return;
            }
            amount            = std::clamp<int16>(amount, 0, 500);
            auto*       PChar = static_cast<CCharEntity*>(PEntity);
            const char* Query = "UPDATE char_job_points SET job_points = %u WHERE charid = %u AND jobid = %u";
            _sql->Query(Query, amount, PChar->id, jobID);
        };
    }
};
// You must call this to register your module with the program!
REGISTER_CPP_MODULE(setjpoints);