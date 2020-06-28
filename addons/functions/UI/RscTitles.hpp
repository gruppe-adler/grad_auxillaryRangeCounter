#include "idcmacros.hpp"

class ctrlStaticPictureKeepAspect;

class RscTitles
{
    class grad_paceCountBeads
    {
        idd = -1;
        fadein = 1;
        fadeout = 1;
        duration = 1e+011;
        onLoad = QUOTE(_this call FUNC(loadUI));
        class Controls {
            class background: ctrlStaticPictureKeepAspect {
                idc = IDC_TOP_BACKGROUND;
                text = QPATHTOF(UI\background.paa);
                x = safezoneX + (safezoneX/2);
                y = safezoneY;
                w = safezoneW;
                h = safezoneH;
            };
            class top_beads: background {
                idc = IDC_TOP_BEADS;
                text = "";
            };
            class bottom_beads: background {
                idc = IDC_BOTTOM_BEADS;
                text = "";
            };
        };
    };
};