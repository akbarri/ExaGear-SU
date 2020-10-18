.class public final enum Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;
.super Ljava/lang/Enum;
.source "WindowPropertiesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/WindowPropertiesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyModification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

.field public static final enum APPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

.field public static final enum PREPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

.field public static final enum REPLACE:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->REPLACE:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    .line 63
    new-instance v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    const-string v1, "PREPEND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->PREPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    .line 64
    new-instance v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    const-string v1, "APPEND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->APPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    sget-object v1, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->REPLACE:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->PREPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->APPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->$VALUES:[Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;
    .locals 1

    .line 60
    const-class v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;
    .locals 1

    .line 60
    sget-object v0, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->$VALUES:[Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    return-object v0
.end method
