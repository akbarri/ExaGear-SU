.class public final enum Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;
.super Ljava/lang/Enum;
.source "RequestCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

.field public static final enum REPORT_SYSCALL:Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    const-string v1, "REPORT_SYSCALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;->REPORT_SYSCALL:Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    sget-object v1, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;->REPORT_SYSCALL:Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;->$VALUES:[Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;
    .locals 1

    .line 3
    const-class v0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;
    .locals 1

    .line 3
    sget-object v0, Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;->$VALUES:[Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    invoke-virtual {v0}, [Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/guestApplicationVFSTracker/impl/RequestCodes;

    return-object v0
.end method
