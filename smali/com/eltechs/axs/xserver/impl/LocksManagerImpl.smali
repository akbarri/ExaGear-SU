.class public Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;
.super Ljava/lang/Object;
.source "LocksManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/LocksManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$NullXLock;,
        Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;,
        Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$SingleXLock;
    }
.end annotation


# static fields
.field private static final locksOnInputDevices:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;


# instance fields
.field private final locks:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/eltechs/axs/xserver/LocksManager$Subsystem;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 59
    new-array v0, v0, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->INPUT_DEVICES:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->WINDOWS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->KEYBOARD_MODEL_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->FOCUS_MANAGER:Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->locksOnInputDevices:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->locks:Ljava/util/EnumMap;

    .line 26
    invoke-static {}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->values()[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 28
    iget-object v4, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->locks:Ljava/util/EnumMap;

    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;)Ljava/util/EnumMap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->locks:Ljava/util/EnumMap;

    return-object p0
.end method


# virtual methods
.method public isLocked(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->locks:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p1

    return p1
.end method

.method public lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;
    .locals 2

    .line 40
    new-instance v0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$SingleXLock;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->locks:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$SingleXLock;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    return-object v0
.end method

.method public lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;
    .locals 2

    .line 46
    array-length v0, p1

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$NullXLock;->access$000()Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 52
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object p1

    return-object p1

    .line 55
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;-><init>(Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)V

    return-object v0
.end method

.method public lockAll()Lcom/eltechs/axs/xserver/LocksManager$XLock;
    .locals 1

    .line 71
    invoke-static {}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->values()[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0

    return-object v0
.end method

.method public lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;
    .locals 2

    .line 65
    new-instance v0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;

    sget-object v1, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;->locksOnInputDevices:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-direct {v0, p0, v1}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$MultiXLock;-><init>(Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)V

    return-object v0
.end method
