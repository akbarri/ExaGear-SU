.class final Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;
.super Ljava/lang/Object;
.source "LocksManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/LocksManager$XLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiXLock"
.end annotation


# instance fields
.field private final systems:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field final synthetic this$0:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)V
    .locals 3

    .line 96
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;->this$0:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;->systems:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 99
    invoke-static {p1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->access$100(Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;)Ljava/util/EnumMap;

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 102
    invoke-virtual {p1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;->this$0:Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->access$100(Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;)Ljava/util/EnumMap;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;->systems:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;->systems:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
