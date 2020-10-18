.class final enum Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;
.super Ljava/lang/Enum;
.source "EpollProcessorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

.field public static final enum DESTROYED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

.field public static final enum NOT_STARTED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

.field public static final enum RUNNING:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 165
    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->NOT_STARTED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->RUNNING:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    new-instance v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    const-string v1, "DESTROYED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->DESTROYED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    sget-object v1, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->NOT_STARTED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->RUNNING:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->DESTROYED:Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->$VALUES:[Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;
    .locals 1

    .line 165
    const-class v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;
    .locals 1

    .line 165
    sget-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->$VALUES:[Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$State;

    return-object v0
.end method
