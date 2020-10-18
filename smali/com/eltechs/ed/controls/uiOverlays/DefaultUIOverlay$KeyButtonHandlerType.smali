.class final enum Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;
.super Ljava/lang/Enum;
.source "DefaultUIOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyButtonHandlerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

.field public static final enum CLICK:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

.field public static final enum CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

.field public static final enum PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CLICK:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    .line 52
    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    const-string v1, "PRESS_RELEASE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    .line 53
    new-instance v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    const-string v1, "CUSTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    const/4 v0, 0x3

    .line 49
    new-array v0, v0, [Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CLICK:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->$VALUES:[Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;
    .locals 1

    .line 49
    const-class v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;
    .locals 1

    .line 49
    sget-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->$VALUES:[Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {v0}, [Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    return-object v0
.end method
