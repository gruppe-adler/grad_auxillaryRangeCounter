class CfgWeapons {
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

    class GVAR(paceCountBeads): ACE_ItemCore {
        displayName = CSTRING(Name);
        author = "Salbei";
        descriptionShort = CSTRING(Description);
        //picture = QPATHTOF(UI\item.paa);
        scope = 2;
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };
};