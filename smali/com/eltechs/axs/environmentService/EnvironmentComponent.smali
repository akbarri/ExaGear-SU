.class public abstract Lcom/eltechs/axs/environmentService/EnvironmentComponent;
.super Ljava/lang/Object;
.source "EnvironmentComponent.java"


# instance fields
.field private environment:Lcom/eltechs/axs/environmentService/AXSEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addedToEnvironment(Lcom/eltechs/axs/environmentService/AXSEnvironment;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/EnvironmentComponent;->environment:Lcom/eltechs/axs/environmentService/AXSEnvironment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already attached to an environment."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/EnvironmentComponent;->environment:Lcom/eltechs/axs/environmentService/AXSEnvironment;

    return-void
.end method

.method protected final getEnvironment()Lcom/eltechs/axs/environmentService/AXSEnvironment;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/environmentService/EnvironmentComponent;->environment:Lcom/eltechs/axs/environmentService/AXSEnvironment;

    return-object v0
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
