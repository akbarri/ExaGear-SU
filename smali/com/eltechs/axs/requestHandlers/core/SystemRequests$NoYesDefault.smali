.class public final enum Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;
.super Ljava/lang/Enum;
.source "SystemRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/SystemRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoYesDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

.field public static final enum DEFAULT:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

.field public static final enum NO:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

.field public static final enum YES:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->NO:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    .line 74
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    const-string v1, "YES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->YES:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    .line 75
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    const-string v1, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->DEFAULT:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    const/4 v0, 0x3

    .line 71
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->NO:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->YES:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->DEFAULT:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;
    .locals 1

    .line 71
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;
    .locals 1

    .line 71
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    return-object v0
.end method
