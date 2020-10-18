.class public final enum Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;
.super Ljava/lang/Enum;
.source "ColormapManipulationRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alloc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

.field public static final enum ALL:Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

.field public static final enum NONE:Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;->NONE:Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    .line 55
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    const-string v1, "ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;->ALL:Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;->NONE:Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;->ALL:Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;
    .locals 1

    .line 52
    const-class v0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;
    .locals 1

    .line 52
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;->$VALUES:[Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    invoke-virtual {v0}, [Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests$Alloc;

    return-object v0
.end method
