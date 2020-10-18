.class public final enum Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;
.super Ljava/lang/Enum;
.source "WindowHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/helpers/WindowHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

.field public static final enum UNMAPPED:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

.field public static final enum UNVIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

.field public static final enum VIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    const-string v1, "UNMAPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->UNMAPPED:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    const-string v1, "UNVIEWABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->UNVIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    .line 29
    new-instance v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    const-string v1, "VIEWABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->VIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    sget-object v1, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->UNMAPPED:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->UNVIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->VIEWABLE:Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->$VALUES:[Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;
    .locals 1

    .line 25
    const-class v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;
    .locals 1

    .line 25
    sget-object v0, Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->$VALUES:[Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/helpers/WindowHelpers$MapState;

    return-object v0
.end method
