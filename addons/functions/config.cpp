#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(ADDON);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {QMAINPATCH};
        authors[] = {"Ainer","Salbei"};
        VERSION_CONFIG;
    };
};

#include <CfgEventHandlers.hpp>
#include <CfgVehicles.hpp>
#include <CfgWeapons.hpp>
#include <UI\RscTitles.hpp>
#include <CfgUIGrids.hpp>