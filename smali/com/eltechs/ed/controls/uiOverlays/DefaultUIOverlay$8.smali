.class synthetic Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$8;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$ed$controls$uiOverlays$DefaultUIOverlay$KeyButtonHandlerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 284
    invoke-static {}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->values()[Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$8;->$SwitchMap$com$eltechs$ed$controls$uiOverlays$DefaultUIOverlay$KeyButtonHandlerType:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$8;->$SwitchMap$com$eltechs$ed$controls$uiOverlays$DefaultUIOverlay$KeyButtonHandlerType:[I

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CLICK:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$8;->$SwitchMap$com$eltechs$ed$controls$uiOverlays$DefaultUIOverlay$KeyButtonHandlerType:[I

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->PRESS_RELEASE:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$8;->$SwitchMap$com$eltechs$ed$controls$uiOverlays$DefaultUIOverlay$KeyButtonHandlerType:[I

    sget-object v1, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->CUSTOM:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;

    invoke-virtual {v1}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$KeyButtonHandlerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
