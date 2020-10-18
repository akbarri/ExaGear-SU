.class public final enum Lcom/eltechs/axs/xserver/LocksManager$Subsystem;
.super Ljava/lang/Enum;
.source "LocksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/LocksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Subsystem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/LocksManager$Subsystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum ATOMS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum COLORMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum CURSORS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum DESKTOP_EXPERIENCE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum FOCUS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum GRAPHICS_CONTEXTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum ID_INTERVALS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum KEYBOARD_MODEL_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum PIXMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum RENDERING_ENGINE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum SCREEN_INFO:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum SELECTIONS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum SHM_SEGMENTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field public static final enum WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "INPUT_DEVICES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 24
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "WINDOWS_MANAGER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 25
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "PIXMAPS_MANAGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->PIXMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 26
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "DRAWABLES_MANAGER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "ATOMS_MANAGER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->ATOMS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 29
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "GRAPHICS_CONTEXTS_MANAGER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->GRAPHICS_CONTEXTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 30
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "CURSORS_MANAGER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->CURSORS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 31
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "COLORMAPS_MANAGER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->COLORMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 32
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "SHM_SEGMENTS_MANAGER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SHM_SEGMENTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 33
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "KEYBOARD_MODEL_MANAGER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->KEYBOARD_MODEL_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 34
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "FOCUS_MANAGER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->FOCUS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 35
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "DESKTOP_EXPERIENCE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DESKTOP_EXPERIENCE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 36
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "ID_INTERVALS_MANAGER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->ID_INTERVALS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 37
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "SELECTIONS_MANAGER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SELECTIONS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 38
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "SCREEN_INFO"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SCREEN_INFO:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 39
    new-instance v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const-string v1, "RENDERING_ENGINE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->RENDERING_ENGINE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/16 v0, 0x10

    .line 20
    new-array v0, v0, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->PIXMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DRAWABLES_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->ATOMS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->GRAPHICS_CONTEXTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->CURSORS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->COLORMAPS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SHM_SEGMENTS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->KEYBOARD_MODEL_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->FOCUS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v12

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->DESKTOP_EXPERIENCE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v13

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->ID_INTERVALS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aput-object v1, v0, v14

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SELECTIONS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->SCREEN_INFO:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->RENDERING_ENGINE:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->$VALUES:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/LocksManager$Subsystem;
    .locals 1

    .line 20
    const-class v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;
    .locals 1

    .line 20
    sget-object v0, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->$VALUES:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    return-object v0
.end method
