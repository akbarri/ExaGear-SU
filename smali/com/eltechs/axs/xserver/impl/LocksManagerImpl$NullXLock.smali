.class final Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$NullXLock;
.super Ljava/lang/Object;
.source "LocksManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/LocksManager$XLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullXLock"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/eltechs/axs/xserver/LocksManager$XLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$NullXLock;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$NullXLock;-><init>()V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$NullXLock;->INSTANCE:Lcom/eltechs/axs/xserver/LocksManager$XLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/eltechs/axs/xserver/LocksManager$XLock;
    .locals 1

    .line 117
    sget-object v0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$NullXLock;->INSTANCE:Lcom/eltechs/axs/xserver/LocksManager$XLock;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
