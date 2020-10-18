.class public final enum Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;
.super Ljava/lang/Enum;
.source "TouchScreenControlsInputConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackKeyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

.field public static final enum SHOW_POPUP_MENU:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

.field public static final enum XKEYCODE:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    const-string v1, "XKEYCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->XKEYCODE:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    .line 13
    new-instance v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    const-string v1, "SHOW_POPUP_MENU"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->SHOW_POPUP_MENU:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    sget-object v1, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->XKEYCODE:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->SHOW_POPUP_MENU:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->$VALUES:[Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->$VALUES:[Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    invoke-virtual {v0}, [Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    return-object v0
.end method
