.class public Lcom/eltechs/axs/xserver/impl/KeyboardModelManagerImpl;
.super Ljava/lang/Object;
.source "KeyboardModelManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/KeyboardModelManager;


# instance fields
.field private keyboardModel:Lcom/eltechs/axs/xserver/KeyboardModel;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/KeyboardModel;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/KeyboardModelManagerImpl;->keyboardModel:Lcom/eltechs/axs/xserver/KeyboardModel;

    return-void
.end method


# virtual methods
.method public getKeyboardModel()Lcom/eltechs/axs/xserver/KeyboardModel;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/KeyboardModelManagerImpl;->keyboardModel:Lcom/eltechs/axs/xserver/KeyboardModel;

    return-object v0
.end method

.method public setKeyboardModel(Lcom/eltechs/axs/xserver/KeyboardModel;)V
    .locals 0

    .line 36
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    return-void
.end method
