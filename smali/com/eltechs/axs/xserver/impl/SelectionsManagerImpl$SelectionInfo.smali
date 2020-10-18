.class Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;
.super Ljava/lang/Object;
.source "SelectionsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionInfo"
.end annotation


# instance fields
.field public client:Lcom/eltechs/axs/xserver/client/XClient;

.field public lastChangeTime:I

.field public owner:Lcom/eltechs/axs/xserver/Window;

.field final synthetic this$0:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;


# direct methods
.method private constructor <init>(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->this$0:Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;-><init>(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;)V

    return-void
.end method
