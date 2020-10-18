.class public final enum Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;
.super Ljava/lang/Enum;
.source "RequestCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

.field public static final enum ABOUT_TO_FORK:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

.field public static final enum FORKED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

.field public static final enum TRANSLATOR_STARTED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    const-string v1, "TRANSLATOR_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->TRANSLATOR_STARTED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    .line 18
    new-instance v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    const-string v1, "ABOUT_TO_FORK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->ABOUT_TO_FORK:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    .line 19
    new-instance v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    const-string v1, "FORKED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->FORKED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    sget-object v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->TRANSLATOR_STARTED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->ABOUT_TO_FORK:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->FORKED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->$VALUES:[Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;
    .locals 1

    .line 15
    const-class v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;
    .locals 1

    .line 15
    sget-object v0, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->$VALUES:[Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    invoke-virtual {v0}, [Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    return-object v0
.end method
