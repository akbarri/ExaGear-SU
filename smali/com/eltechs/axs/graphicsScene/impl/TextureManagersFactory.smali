.class public abstract Lcom/eltechs/axs/graphicsScene/impl/TextureManagersFactory;
.super Ljava/lang/Object;
.source "TextureManagersFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTexturesManager()Lcom/eltechs/axs/graphicsScene/impl/TexturesManager;
    .locals 1

    .line 18
    new-instance v0, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;

    invoke-direct {v0}, Lcom/eltechs/axs/graphicsScene/impl/TrivialTexturesManager;-><init>()V

    return-object v0
.end method
