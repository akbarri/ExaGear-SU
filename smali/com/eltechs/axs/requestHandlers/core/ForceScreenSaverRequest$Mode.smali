.class public final enum Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;
.super Ljava/lang/Enum;
.source "ForceScreenSaverRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

.field public static final enum ACTIVATE:Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

.field public static final enum RESET:Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;->RESET:Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    .line 30
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    const-string v1, "ACTIVATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;->ACTIVATE:Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;->RESET:Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;->ACTIVATE:Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;
    .locals 1

    .line 27
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;
    .locals 1

    .line 27
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;

    return-object v0
.end method
